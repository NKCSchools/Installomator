cubexsoftpstwizardformac)
    name="cubexsoft-pst-wizard-for-mac"
    type="pkgInDmg"
    packageID="com.cubexsoft.pkg.pstwizardformac"
    downloadURL="https://www.cubexsoft.com/free-demo/cubexsoft-pst-wizard-for-mac.dmg"
    appNewVersion=""
    expectedTeamID="T89ND5XN28"
    ;;#!/bin/bash
    
    sudo pkill DRC INSIGHT Online Assessments
    tempfile="/usr/local/nkc/DRCConfiguration.json"
    appfile="/Applications/DRC INSIGHT Online Assessments/DRCConfiguration.json"
    touch $tempfile
    
    echo '{
    "config": {
        "httpsProxy": ""
    },
    "ouIds": [
        "43044353"
    ],
    "toolkitUrl": "https://www.drcedirect.com/all/eca-device-toolkit-loader-ui/"
}' > $tempfile
    
    cp "$tempfile" "$appfile"