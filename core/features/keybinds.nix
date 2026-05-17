{
  terminal,
  noctaliaBin,
  ...
}: ''
  binds {
      // Help / overview
      Mod+Shift+Slash hotkey-overlay-title="Show Hotkeys" {
          show-hotkey-overlay;
      }

      Mod+O repeat=false hotkey-overlay-title="Open Overview" {
          toggle-overview;
      }

      // Noctalia launcher
      Mod+Space hotkey-overlay-title="Open Noctalia Launcher" {
          spawn "${noctaliaBin}" "ipc" "call" "launcher" "toggle";
      }

      // Apps
      Mod+Return hotkey-overlay-title="Open Kitty" {
          spawn "${terminal}";
      }

      Mod+B hotkey-overlay-title="Open Zen Browser" {
          spawn "flatpak" "run" "app.zen_browser.zen";
      }

      Mod+C hotkey-overlay-title="Open Cider" {
          spawn "/home/bahri/.local/bin/cider-v3.1.2-linux-x64.AppImage";
      }

      Mod+M hotkey-overlay-title="Open Stremio" {
          spawn "flatpak" "run" "com.stremio.Stremio";
      }

      Mod+S hotkey-overlay-title="Open Steam" {
          spawn "steam";
      }

      Mod+D hotkey-overlay-title="Open Discord" {
          spawn "discord";
      }

      Mod+G hotkey-overlay-title="Open GIMP" {
          spawn "gimp";
      }

      // Window controls
      Mod+Q repeat=false hotkey-overlay-title="Close Focused Window" {
          close-window;
      }

      Mod+F hotkey-overlay-title="Fullscreen Window" {
          fullscreen-window;
      }

      Mod+Shift+Q hotkey-overlay-title="Exit Niri" {
          quit;
      }

      // Focus movement
      Mod+Left hotkey-overlay-title="Focus Left" {
          focus-column-left;
      }

      Mod+Right hotkey-overlay-title="Focus Right" {
          focus-column-right;
      }

      Mod+Up hotkey-overlay-title="Focus Up" {
          focus-window-up;
      }

      Mod+Down hotkey-overlay-title="Focus Down" {
          focus-window-down;
      }

      // Move windows
      Mod+Shift+Left hotkey-overlay-title="Move Left" {
          move-column-left;
      }

      Mod+Shift+Right hotkey-overlay-title="Move Right" {
          move-column-right;
      }

      Mod+Shift+Up hotkey-overlay-title="Move Up" {
          move-window-up;
      }

      Mod+Shift+Down hotkey-overlay-title="Move Down" {
          move-window-down;
      }

      // Resize windows
      Mod+Minus hotkey-overlay-title="Decrease Window Width" {
          set-column-width "-10%";
      }

      Mod+Equal hotkey-overlay-title="Increase Window Width" {
          set-column-width "+10%";
      }

      Mod+Shift+Minus hotkey-overlay-title="Decrease Window Height" {
          set-window-height "-10%";
      }

      Mod+Shift+Equal hotkey-overlay-title="Increase Window Height" {
          set-window-height "+10%";
      }

      Mod+Ctrl+R hotkey-overlay-title="Reset Window Height" {
          reset-window-height;
      }

      // Workspaces
      Mod+1 hotkey-overlay-title="Workspace 1" {
          focus-workspace 1;
      }

      Mod+2 hotkey-overlay-title="Workspace 2" {
          focus-workspace 2;
      }

      Mod+3 hotkey-overlay-title="Workspace 3" {
          focus-workspace 3;
      }

      Mod+Shift+1 hotkey-overlay-title="Move to Workspace 1" {
          move-column-to-workspace 1;
      }

      Mod+Shift+2 hotkey-overlay-title="Move to Workspace 2" {
          move-column-to-workspace 2;
      }

      Mod+Shift+3 hotkey-overlay-title="Move to Workspace 3" {
          move-column-to-workspace 3;
      }

      // Screenshot
      Print hotkey-overlay-title="Take Screenshot" {
          screenshot;
      }
  }
''
