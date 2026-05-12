{
  terminal,
  browser,
  noctaliaBin,
  ...
}: ''
  binds {
      Mod+O repeat=false { toggle-overview; }
      Mod+X repeat=false { toggle-overview; }
      Mod+Shift+Slash { show-hotkey-overlay; }

      Mod+Return { spawn "${terminal}"; }
      Mod+T { spawn "${terminal}"; }
      Mod+B { spawn "${browser}"; }

      Mod+Space {
          spawn "${noctaliaBin}" "ipc" "call" "launcher" "toggle";
      }

      Mod+Comma {
          spawn "${noctaliaBin}" "ipc" "call" "settings" "toggle";
      }

      Mod+Shift+C {
          spawn "${noctaliaBin}" "ipc" "call" "controlCenter" "toggle";
      }

      Mod+Shift+Q { quit; }

      Mod+Q repeat=false { close-window; }

      Mod+Alt+F { maximize-column; }
      Mod+Shift+F { fullscreen-window; }

      Mod+W { toggle-window-floating; }
      Mod+Ctrl+W { switch-focus-between-floating-and-tiling; }

      Mod+V { toggle-column-tabbed-display; }

      Mod+Left  { focus-column-left; }
      Mod+Down  { focus-window-down; }
      Mod+Up    { focus-window-up; }
      Mod+Right { focus-column-right; }

      Mod+H { focus-column-left; }
      Mod+J { focus-window-down; }
      Mod+K { focus-window-up; }
      Mod+L { focus-column-right; }

      Mod+Shift+Left  { move-column-left; }
      Mod+Shift+Down  { move-window-down; }
      Mod+Shift+Up    { move-window-up; }
      Mod+Shift+Right { move-column-right; }

      Mod+Shift+H { move-column-left; }
      Mod+Shift+J { move-window-down; }
      Mod+Shift+K { move-window-up; }
      Mod+Shift+L { move-column-right; }

      Mod+U { focus-workspace-down; }
      Mod+I { focus-workspace-up; }

      Mod+1 { focus-workspace 1; }
      Mod+2 { focus-workspace 2; }
      Mod+3 { focus-workspace 3; }
      Mod+4 { focus-workspace 4; }
      Mod+5 { focus-workspace 5; }
      Mod+6 { focus-workspace 6; }
      Mod+7 { focus-workspace 7; }
      Mod+8 { focus-workspace 8; }
      Mod+9 { focus-workspace 9; }

      Mod+Ctrl+1 { move-column-to-workspace 1; }
      Mod+Ctrl+2 { move-column-to-workspace 2; }
      Mod+Ctrl+3 { move-column-to-workspace 3; }
      Mod+Ctrl+4 { move-column-to-workspace 4; }
      Mod+Ctrl+5 { move-column-to-workspace 5; }
      Mod+Ctrl+6 { move-column-to-workspace 6; }
      Mod+Ctrl+7 { move-column-to-workspace 7; }
      Mod+Ctrl+8 { move-column-to-workspace 8; }
      Mod+Ctrl+9 { move-column-to-workspace 9; }

      Mod+R { switch-preset-column-width; }
      Mod+Shift+R { switch-preset-window-height; }
      Mod+Ctrl+R { reset-window-height; }

      Mod+Ctrl+F { expand-column-to-available-width; }
      Mod+Ctrl+C { center-column; }

      Mod+Minus { set-column-width "-10%"; }
      Mod+Equal { set-column-width "+10%"; }

      Print { screenshot; }
      Ctrl+Print { screenshot-screen; }
      Alt+Print { screenshot-window; }
      Mod+Shift+S { screenshot; }
  }
''
