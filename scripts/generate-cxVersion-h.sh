#!/bin/sh
# Generates src/cxVersion.h from the repository VERSION file.
set -e
ROOT="$(cd "$(dirname "$0")/.." && pwd)"
VERSION="$(tr -d ' \t\r\n' < "$ROOT/VERSION")"
MAJOR="${VERSION%%.*}"
REST="${VERSION#*.}"
MINOR="${REST%%.*}"
PATCH="${REST#*.}"
[ -z "$PATCH" ] && PATCH=0

cat > "$ROOT/src/cxVersion.h" <<EOF
// Copyright (c) 2005-2007 Michael H. Kinney
//
// Auto-generated from ../VERSION; run scripts/generate-cxVersion-h.sh after changing VERSION.

#ifndef CX_VERSION_H
#define CX_VERSION_H

#define CXWIDGETS_VERSION_MAJOR ${MAJOR}
#define CXWIDGETS_VERSION_MINOR ${MINOR}
#define CXWIDGETS_VERSION_PATCH ${PATCH}
#define CXWIDGETS_VERSION_STRING "${VERSION}"

#endif // CX_VERSION_H
EOF
