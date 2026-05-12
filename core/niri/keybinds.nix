{
  terminal,
  noctaliaBin,
  ...
}: ''
  binds {
      // Overview / help
      Mod+O repeat=false hotkey-overlay-title="Open Overview" { toggle-overview; }
      Mod+X repeat=false hotkey-overlay-title=null { toggle-overview; }
      Mod+Shift+Slash hotkey-overlay-title="Show Important Hotkeys" { show-hotkey-overlay; }

      // Apps
      Mod+Return hotkey-overlay-title="Open Alacritty" {
          spawn "${terminal}";
      }

      Mod+B hotkey-overlay-title="Open Zen Browser" {
          spawn "flatpak" "run" "app.zen_browser.zen";
      }

      Mod+G hotkey-overlay-title="Open Steam" {
          spawn "steam";
      }

      Mod+M hotkey-overlay-title="Open Stremio" {
          spawn "flatpak" "run" "com.stremio.Stremio";
      }

      Mod+C hotkey-overlay-title="Open Cider" {
          spawn "/home/bahri/.local/bin/cider-v3.1.2-linux-x64.AppImage";
      }

      // Noctalia
      Mod+Space hotkey-overlay-title="Open Noctalia Launcher" {
          spawn "${noctaliaBin}" "ipc" "call" "launcher" "toggle";
      }

      // Session / windows
      Mod+Shift+Q hotkey-overlay-title="Exit Niri" { quit; }
      Mod+Q repeat=false hotkey-overlay-title="Close Focused Window" { close-window; }

      Mod+Alt+F hotkey-overlay-title="Maximize Column" { maximize-column; }
      Mod+Shift+F hotkey-overlay-title="Fullscreen Window" { fullscreen-window; }

      Mod+W hotkey-overlay-title="Toggle Floating Window" { toggle-window-floating; }
      Mod+Ctrl+W hotkey-overlay-title="Switch Focus: Floating / Tiling" {
          switch-focus-between-floating-and-tiling;
      }

      Mod+V hotkey-overlay-title="Toggle Tabbed Column" { toggle-column-tabbed-display; }

      // Focus movement
      Mod+Left  hotkey-overlay-title="Focus Column Left" { focus-column-left; }
      Mod+Down  hotkey-overlay-title="Focus Window Down" { focus-window-down; }
      Mod+Up    hotkey-overlay-title="Focus Window Up" { focus-window-up; }
      Mod+Right hotkey-overlay-title="Focus Column Right" { focus-column-right; }

      Mod+H hotkey-overlay-title=null { focus-column-left; }
      Mod+J hotkey-overlay-title=null { focus-window-down; }
      Mod+K hotkey-overlay-title=null { focus-window-up; }
      Mod+L hotkey-overlay-title=null { focus-column-right; }

      // Move windows / columns
      Mod+Shift+Left  hotkey-overlay-title="Move Column Left" { move-column-left; }
      Mod+Shift+Down  hotkey-overlay-title="Move Window Down" { move-window-down; }
      Mod+Shift+Up    hotkey-overlay-title="Move Window Up" { move-window-up; }
      Mod+Shift+Right hotkey-overlay-title="Move Column Right" { move-column-right; }

      Mod+Shift+H hotkey-overlay-title=null { move-column-left; }
      Mod+Shift+J hotkey-overlay-title=null { move-window-down; }
      Mod+Shift+K hotkey-overlay-title=null { move-window-up; }
      Mod+Shift+L hotkey-overlay-title=null { move-column-right; }

      // Workspaces
      Mod+U hotkey-overlay-title="Switch Workspace Down" { focus-workspace-down; }
      Mod+I hotkey-overlay-title="Switch Workspace Up" { focus-workspace-up; }

      Mod+1 hotkey-overlay-title="Go to Workspace 1" { focus-workspace 1; }
      Mod+2 hotkey-overlay-title="Go to Workspace 2" { focus-workspace 2; }
      Mod+3 hotkey-overlay-title="Go to Workspace 3" { focus-workspace 3; }

      Mod+Ctrl+1 hotkey-overlay-title="Move Column to Workspace 1" { move-column-to-workspace 1; }
      Mod+Ctrl+2 hotkey-overlay-title="Move Column to Workspace 2" { move-column-to-workspace 2; }
      Mod+Ctrl+3 hotkey-overlay-title="Move Column to Workspace 3" { move-column-to-workspace 3; }

      // Sizing
      Mod+R hotkey-overlay-title="Switch Preset Column Widths" { switch-preset-column-width; }
      Mod+Shift+R hotkey-overlay-title=null { switch-preset-window-height; }
      Mod+Ctrl+R hotkey-overlay-title=null { reset-window-height; }

      Mod+Ctrl+F hotkey-overlay-title=null { expand-column-to-available-width; }
      Mod+Ctrl+C hotkey-overlay-title=null { center-column; }

      Mod+Minus hotkey-overlay-title=null { set-column-width "-10%"; }
      Mod+Equal hotkey-overlay-title=null { set-column-width "+10%"; }

      // Screenshots
      Print hotkey-overlay-title="Take Screenshot" { screenshot; }
      Ctrl+Print hotkey-overlay-title=null { screenshot-screen; }
      Alt+Print hotkey-overlay-title=null { screenshot-window; }
      Mod+Shift+P hotkey-overlay-title=null { screenshot; }
  }
''
