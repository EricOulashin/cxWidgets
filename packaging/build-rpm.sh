#!/bin/sh
# Build an RPM compatible with Fedora/RHEL-style systems from the .deb using alien.
# Requires: fakeroot, alien (install in CI or locally before running).
set -e
ROOT="$(cd "$(dirname "$0")/.." && pwd)"
VER="$(tr -d ' \t\r\n' < "$ROOT/CXWIDGETS_VERSION")"
DEB_ARCH="$(dpkg-architecture -qDEB_HOST_ARCH 2>/dev/null || echo amd64)"
DEB="libcxwidgets-dev_${VER}_${DEB_ARCH}.deb"
mkdir -p "${ROOT}/dist"
cd "${ROOT}/dist"
fakeroot alien --to-rpm --keep-version --scripts "$DEB"
# alien writes the .rpm into the current directory
for f in ./*.rpm; do
   if [ -f "$f" ]; then
      echo "Built $(basename "$f")"
      exit 0
   fi
done
echo "build-rpm.sh: could not find generated .rpm in ${ROOT}/dist" >&2
exit 1
