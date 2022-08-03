#!/bin/bash
# This file is the same for all packages.

TARGET="$PREFIX/share/sc4pac/plugins/$SC4PAC_SUBFOLDER/$PKG_NAME-$PKG_VERSION-$PKG_BUILDNUM"
mkdir -p "$TARGET"
cp "$RECIPE_DIR/download-links.txt" "$TARGET"

# For now, we just store empty files to avoid rehosting anything.
# (-r disables backslash escaping, whitespace is trimmed from lines)
while read -r line; do
    mkdir -p "$(dirname "$TARGET/$line")" && touch "$TARGET/$line"
done < "$RECIPE_DIR/$SC4PAC_FILESLIST"
