#!/bin/sh

echo "runSwiftGen.sh - Running SwiftGen"

cd ${BUILD_DIR%Build/*}SourcePackages/checkouts/SwiftGen

# This is magic
/usr/bin/xcrun --sdk macosx swift run swiftgen config run --config $SRCROOT/swiftgen.yml

echo "runSwiftGen.sh - Done"
