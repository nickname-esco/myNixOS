{...}: ''
  window-rule {
      geometry-corner-radius 12
      clip-to-geometry true
      draw-border-with-background false
  }

  window-rule {
      match app-id=r#"^gamescope$"#
      open-fullscreen true
  }

  window-rule {
      match app-id=r#"^steam_app_414340$"#
      open-fullscreen true
  }

  window-rule {
      match title=r#"(?i).*hellblade.*"#
      open-fullscreen true
  }

  window-rule {
      match app-id=r#"^thunar$"#
      opacity 0.85
  }

  window-rule {
      match app-id=r#"^app\.zen_browser\.zen$"#

      default-column-width {
          proportion 0.5
      }
  }
''
