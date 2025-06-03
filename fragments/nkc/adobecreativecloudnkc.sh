adobecreativecloudnkc)
    name="adobecreativecloud"
    type="dmg"
    if [[ "$(arch)" == "arm64" ]]; then
        downloadURL=$(curl -fs "https://helpx.adobe.com/in/download-install/kb/creative-cloud-desktop-app-download.html" | grep -o 'https.*macarm64.*dmg' | head -1 | cut -d '"' -f1)
    else
        downloadURL=$(curl -fs "https://helpx.adobe.com/in/download-install/kb/creative-cloud-desktop-app-download.html" | grep -o 'https.*osx10.*dmg' | head -1 | cut -d '"' -f1)
    fi
    appNewVersion=""
    expectedTeamID="JQ525L2MZD"
    ;;
	
