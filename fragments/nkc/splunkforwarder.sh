splunkforwarder)
    name="SplunkForwarder"
    type="dmg"
    downloadURL="https://download.splunk.com/products/universalforwarder/releases/9.4.2/macOS/SplunkUniversalForwarder-9.4.2-a7f645ddaf91-darwin-universal.dmg"
    appNewVersion="9.4.2"
    expectedTeamID="4HBT8Q2X5G"
    installerTool="custom"
    installCommand='
        pkgPath=$(find "$tmpDir" -type f -path "*/.payload/*.pkg" -name "*.pkg" | head -n 1)
        if [ -f "$pkgPath" ]; then
            echo "Installing SplunkForwarder from $pkgPath"
            /usr/sbin/installer -pkg "$pkgPath" -target /
        else
            echo "ERROR: Could not find SplunkForwarder pkg inside mounted dmg"
            exit 1
        fi
    '
    ;;
    