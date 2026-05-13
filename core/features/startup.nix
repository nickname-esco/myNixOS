{noctaliaBin, ...}: ''
  spawn-at-startup "xfce4-session"
  spawn-at-startup "${noctaliaBin}"
  spawn-at-startup "xwayland-satellite"
''
