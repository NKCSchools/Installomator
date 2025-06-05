displaylinkmanager)
    name="DisplayLink Manager"
    type="pkgInZip"
    appNewVersion=$(curl -sfL https://www.synaptics.com/products/displaylink-graphics/downloads/macos | grep -m 1 "Release:" | cut -d ' ' -f2)
    downloadURL="https://www.synaptics.com$(version_no_dots="${appNewVersion//./}" && intermediate_page_url="https://www.synaptics.com/products/displaylink-manager-graphics-connectivity-${version_no_dots}?filetype=exe" && curl -sfL "${intermediate_page_url}" | grep -o -E 'href="[^"]*DisplayLink%20Manager%20Graphics%20Connectivity[^"]*EXE\.zip[^"]*"' | head -n 1 | sed 's/href="//' | sed 's/"//')"
    expectedTeamID="73YQY62QM3"
    ;;
    