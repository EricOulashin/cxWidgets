#!/bin/sh
# Build a native RPM for Fedora/RHEL-style systems using rpmbuild.
# This avoids alien's lossy Debian→RPM dependency translation.
set -e
ROOT="$(cd "$(dirname "$0")/.." && pwd)"
VER="$(tr -d ' \t\r\n' < "$ROOT/CXWIDGETS_VERSION")"

if ! command -v rpmbuild >/dev/null 2>&1; then
  echo "build-rpm.sh: rpmbuild not found. Install 'rpm' / 'rpmbuild' for your distro." >&2
  exit 1
fi

SPEC="${ROOT}/packaging/cxwidgets-devel.spec"
if [ ! -f "$SPEC" ]; then
  echo "build-rpm.sh: missing spec file: $SPEC" >&2
  exit 1
fi

# Expect build artifacts from src/ (CI runs make before packaging).
if [ ! -f "${ROOT}/src/libcxWidgets.a" ]; then
  echo "build-rpm.sh: missing ${ROOT}/src/libcxWidgets.a (run 'make' in src/ first)" >&2
  exit 1
fi
if [ ! -e "${ROOT}/src/libcxWidgets.so" ] && [ ! -e "${ROOT}/src/libcxWidgets.so."* ]; then
  echo "build-rpm.sh: missing ${ROOT}/src/libcxWidgets.so* (run 'make' in src/ first)" >&2
  exit 1
fi

TOPDIR="$(mktemp -d)"
trap 'rm -rf "$TOPDIR"' EXIT
mkdir -p "$TOPDIR/BUILD" "$TOPDIR/BUILDROOT" "$TOPDIR/RPMS" "$TOPDIR/SOURCES" "$TOPDIR/SPECS" "$TOPDIR/SRPMS"

SRCROOT="$TOPDIR/SOURCES/cxwidgets-devel-${VER}"
mkdir -p "$SRCROOT/include/cx" "$SRCROOT/lib"
cp "${ROOT}/src/"*.h "$SRCROOT/include/cx/"
cp "${ROOT}/src/libcxWidgets.a" "$SRCROOT/lib/"
cp -P "${ROOT}/src/libcxWidgets.so" "${ROOT}/src/libcxWidgets.so."* "$SRCROOT/lib/" 2>/dev/null || true
cp "${ROOT}/LICENSE" "$SRCROOT/LICENSE"

tar -C "$TOPDIR/SOURCES" -czf "$TOPDIR/SOURCES/cxwidgets-devel-${VER}.tar.gz" "cxwidgets-devel-${VER}"
cp "$SPEC" "$TOPDIR/SPECS/"

rpmbuild -bb \
  --define "_topdir ${TOPDIR}" \
  --define "version ${VER}" \
  "$TOPDIR/SPECS/$(basename "$SPEC")"

mkdir -p "${ROOT}/dist"
find "$TOPDIR/RPMS" -type f -name '*.rpm' -exec cp -f {} "${ROOT}/dist/" \;

rpm="$(ls -1t "${ROOT}/dist/"*.rpm 2>/dev/null | head -n 1 || true)"
if [ -z "$rpm" ]; then
  echo "build-rpm.sh: could not find generated .rpm under ${ROOT}/dist" >&2
  exit 1
fi
echo "Built $(basename "$rpm")"
