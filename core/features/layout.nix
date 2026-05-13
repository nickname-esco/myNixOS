{...}: ''
  config-notification {
      disable-failed
  }

  gestures {
      hot-corners {
          off
      }
  }

  input {
      keyboard {
          xkb {
          }

          numlock
      }

      touchpad {
          natural-scroll
      }

      mouse {
          accel-profile "adaptive"
          accel-speed 0.0
      }

      focus-follows-mouse
      warp-mouse-to-focus
  }

  layout {
      gaps 10

      center-focused-column "never"
      always-center-single-column

      preset-column-widths {
          proportion 0.33333
          proportion 0.5
          proportion 0.66667
      }

      default-column-width {
          proportion 0.5
      }

      border {
          width 2
          active-color "#cba6f7"
          inactive-color "#45475a"
          urgent-color "#f5c2e7"
      }

      focus-ring {
          off
      }

      shadow {
          softness 45
          spread 8
          offset x=0 y=8
          color "#00000060"
          }

      struts {
      }
  }

  layer-rule {
      match namespace="^quickshell$"
      place-within-backdrop true
  }

  overview {
      backdrop-color "#181825"

      workspace-shadow {
          softness 50
          spread 14
          offset x=0 y=12
          color "#00000060"
      }

      zoom 0.5
  }

  animations {
      workspace-switch {
          spring damping-ratio=0.82 stiffness=380 epsilon=0.0001
      }

      window-open {
          duration-ms 200
          curve "ease-out-expo"
      }

      window-close {
          duration-ms 180
          curve "ease-out-quad"
      }

      horizontal-view-movement {
          spring damping-ratio=0.85 stiffness=380 epsilon=0.0001
      }

      window-movement {
          spring damping-ratio=0.85 stiffness=400 epsilon=0.0001
      }

      window-resize {
          spring damping-ratio=0.85 stiffness=400 epsilon=0.0001
      }

      overview-open-close {
          spring damping-ratio=0.85 stiffness=500 epsilon=0.0001
      }
  }
''
