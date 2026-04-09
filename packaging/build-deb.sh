#!/bin/sh
# Build a Debian package from a completed GNU make build in src/.
set -e
ROOT="$(cd "$(dirname "$0")/.." && pwd)"
VER="$(tr -d ' \t\r\n' < "$ROOT/CXWIDGETS_VERSION")"
DEB_ARCH="$(dpkg-architecture -qDEB_HOST_ARCH 2>/dev/null || echo amd64)"
MULTIARCH="$(dpkg-architecture -qDEB_HOST_MULTIARCH 2>/dev/null || echo x86_64-linux-gnu)"
STAGE="$(mktemp -d)"
trap 'rm -rf "$STAGE"' EXIT

PKGROOT="${STAGE}/pkg"
mkdir -p "${PKGROOT}/DEBIAN"
mkdir -p "${PKGROOT}/usr/include/cx"
mkdir -p "${PKGROOT}/usr/lib/${MULTIARCH}"
mkdir -p "${PKGROOT}/usr/share/doc/libcxwidgets-dev"

cat > "${PKGROOT}/DEBIAN/control" <<EOF
Package: libcxwidgets-dev
Version: ${VER}
Section: libdevel
Priority: optional
Architecture: ${DEB_ARCH}
Maintainer: Eric Oulashin <eric.oulashin@gmail.com>
Depends: libncurses6 | libncurses5, libtinfo6 | libtinfo5, libpanel6 | libpanel5, libmenu6 | libmenu5
Description: Development files for cxWidgets (ncurses-based C++ TUI library)
 Static and shared libraries plus C++ headers for linking against cxWidgets.
EOF

cp "${ROOT}/src/"*.h "${PKGROOT}/usr/include/cx/"
cp "${ROOT}/src/libcxWidgets.a" "${PKGROOT}/usr/lib/${MULTIARCH}/"
for so in "${ROOT}/src/libcxWidgets.so" "${ROOT}/src/libcxWidgets.so."*; do
   if [ -e "$so" ]; then
      cp -P "$so" "${PKGROOT}/usr/lib/${MULTIARCH}/"
   fi
done
cp "${ROOT}/LICENSE" "${PKGROOT}/usr/share/doc/libcxwidgets-dev/copyright"

mkdir -p "${ROOT}/dist"
dpkg-deb --root-owner-group --build "${PKGROOT}" "${ROOT}/dist/libcxwidgets-dev_${VER}_${DEB_ARCH}.deb"
