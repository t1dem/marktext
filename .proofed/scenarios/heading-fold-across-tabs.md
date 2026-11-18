---
name: Keep a heading folded when switching tabs
target: desktop
launch: bash .proofed/marktext/launch.sh
cdp_endpoint: http://127.0.0.1:9312
paths: [packages/desktop/src/renderer/src/components/editorWithTabs/editor.vue, packages/muya/**]
---
MarkText opens on fold.md, with other.md also open in the tab bar.

Hover over "First section" and click the chevron to its left. Click the other.md tab, then click the fold.md tab.

Hover over the chevron next to "First section" to read its tooltip. The tooltip says "Unfold this section". The only paragraph you can read on screen in the editor says "Visible body". Stop after this check.
