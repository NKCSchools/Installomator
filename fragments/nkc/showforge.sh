#!/bin/bash

showforge)
    DMG_URL="https://s3.us-east-2.amazonaws.com/com.motalab.showforge/Showforge.dmg"
    TMP_DMG="/tmp/Showforge.dmg"
    MOUNT_POINT=$(mktemp -d /tmp/showforge_mount_XXXX)
    curl -s -L -o "$TMP_DMG" "$DMG_URL"
    hdiutil attach "$TMP_DMG" -mountpoint "$MOUNT_POINT" -nobrowse -quiet
    APP_PATH=$(find "$MOUNT_POINT" -maxdepth 1 -type d -name "*.app" | head -n 1)
    if [ -z "$APP_PATH" ]; then
    echo "❌ .app not found inside DMG"
    hdiutil detach "$MOUNT_POINT" -quiet
    rm -f "$TMP_DMG"
    exit 1
    fi
    VERSION=$(/usr/libexec/PlistBuddy -c "Print CFBundleShortVersionString" "$APP_PATH/Contents/Info.plist" 2>/dev/null)
    hdiutil detach "$MOUNT_POINT" -quiet
    rm -f "$TMP_DMG"
    if [ -n "$VERSION" ]; then
    echo "📦 Showforge version in DMG: $VERSION"
    FORMATTED_VERSION=$(echo "$VERSION" | tr '.' '_')
    echo "📎 Formatted version: $FORMATTED_VERSION"
    else
    echo "⚠️ Could not read version from Info.plist"
    fi
    name="Showforge"
    type="dmg"
    downloadURL="https://s3.us-east-2.amazonaws.com/com.motalab.showforge/Showforge.dmg"
    downloadURL="https://s3.us-east-2.amazonaws.com/com.motalab.showforge.ghp.edu/Showforge_GHP_Edu_$FORMATTED_VERSION.dmg"
    appNewVersion=""
    expectedTeamID="GFR57H6T9H"
    ;;
