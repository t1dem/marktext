#!/bin/bash
set -euo pipefail

profile=$(mktemp -d)
printf '{"tabBarVisibility":true,"openedFilesInSidebar":false}\n' > "$profile/preferences.json"
printf '# First section\n\nHidden body\n\n# Second section\n\nVisible body\n' > "$profile/fold.md"
printf '# Other tab\n\nSwitch back after this.\n' > "$profile/other.md"

cd packages/desktop
unset ELECTRON_RUN_AS_NODE
exec ./node_modules/electron/dist/Electron.app/Contents/MacOS/Electron . \
  --user-data-dir="$profile" --remote-debugging-port=9312 "$profile/fold.md" "$profile/other.md"
