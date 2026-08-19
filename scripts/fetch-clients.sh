#!/usr/bin/env bash
set -euo pipefail

CLIENT_DIR="clients"
mkdir -p "$CLIENT_DIR"

# owner/repo pairs of all known legacy Roblox client / runtime / server sources
REPOS=(
  "al-ex427/rbx2016"
  "Artifaqt/ROBLOX2016"
  "Eeji1x/2018-roblox-client"
  "Qrixll/Roblox-Clients--2008-2014-2018-"
  "kkorsan/libreblox-roblox"
  "OpenStudGames/OpenStudClient"
  "Garysguff/openblox"
  "AaronKom/neoblocks"
  "Novetus/Novetus_src"
  "Bitl/RBXLegacy-classic"
  "Bitl/RBXLegacy-src"
  "luohoa97/cordial"
  "roblox-linux-wrapper/nixblocks"
  "guio13233/OnlyRetroRobloxHere-ng"
  "archblox/launcher-legacy"
  "theleekco/leeklaunch-legacy"
  "mac-cheese-dev/BloxLaunch"
  "BGR2/OpenSourcedRBXLauncher"
  "CodySimonds65/Roblox-Account-Manager"
  "Retiis/RobloxServer"
  "jmxamongusmodder/watrbx"
  "fossabot/Rboxlo2"
  "goober-blox/GooberBlox-Backend"
  "JasonStuff437/OpenRedirector"
  "9n8e/Circuitron"
  "lrre-foss/lure"
  "lrre-foss/toolbox"
  "BakonBot/legacy-place-converter"
  "MaximumADHD/Legacy-Roblox-API-Dump-Tool"
  "edmondyv/Legacy-Roblox-Scripts"
  "nanodavinci/kinery-lua-scripts"
  "yeku/legacy"
  "Novetus/novetus-assetdelivery"
  "jsdotlua/LEGACY-luau-polyfill"
  "argon-rbx/argon-legacy"
)

> "$CLIENT_DIR/audit.txt"

for repo in "${REPOS[@]}"; do
  name="${repo//\//__}"
  echo "Fetching $repo ..."
  if git clone --depth 1 --quiet "https://github.com/$repo.git" "$CLIENT_DIR/$name"; then
    rm -rf "$CLIENT_DIR/$name/.git"
    echo "OK: $repo -> clients/$name" >> "$CLIENT_DIR/audit.txt"
  else
    echo "FAILED: $repo" >> "$CLIENT_DIR/audit.txt"
  fi
done

echo "Done. See clients/audit.txt for results."