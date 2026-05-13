{...}: ''
  window-rule {
      geometry-corner-radius 12
      clip-to-geometry true
      draw-border-with-background false
  }

  window-rule {
    match app-id="thunar"
    opacity 0.85
      match app-id=r#"^(zen|zen-browser|zen-beta)$"#
      default-column-width {
          proportion 0.75
      }
  }
''
