testnav)
    name="installer"
    type="dmg"
    dmgname=$(curl -s https://download.testnav.com/installerVersions.json | grep mac | cut -d ":" -f 2 | cut -d '"' -f 2)
    echo $dmgname
    downloadURL="https://download.testnav.com/_testnavinstallers/$dmgname"
    appNewVersion=""
    appName="TestNav.app"
    expectedTeamID="9EGT93JZWD"
    ;;
