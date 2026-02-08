#!/usr/bin/bash
pushd uml
dot -Tpng -o cxWidgets_class_diagram.png cxWidgets_classes.dot 2>&1
popd >/dev/null
