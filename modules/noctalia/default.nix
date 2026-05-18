{inputs, ...}: {
  imports = [
    inputs.noctalia.homeModules.default
  ];

  programs.noctalia-shell = {
    enable = true;

    settings = {
      bar = {
        barType = "floating";
        position = "top";
        monitors = [];
        density = "comfortable";

        showOutline = false;
        showCapsule = false;
        capsuleOpacity = 1;
        capsuleColorKey = "none";

        widgetSpacing = 6;
        contentPadding = 2;
        fontScale = 1;

        enableExclusionZoneInset = true;
        backgroundOpacity = 0.86;
        useSeparateOpacity = false;

        marginVertical = 4;
        marginHorizontal = 4;
        frameThickness = 8;
        frameRadius = 12;

        outerCorners = true;
        hideOnOverview = true;

        displayMode = "always_visible";
        autoHideDelay = 500;
        autoShowDelay = 150;
        showOnWorkspaceSwitch = true;

        widgets = {
          left = [
            {
              id = "Launcher";
              useDistroLogo = true;
              icon = "rocket";
              customIconPath = "";
              enableColorization = true;
              colorizeSystemIcon = "primary";
              colorizeSystemText = "none";
              iconColor = "none";
            }

            {
              id = "Workspace";
              labelMode = "index";
              fontWeight = "bold";
              hideUnoccupied = false;
              showLabelsOnlyWhenOccupied = true;
              followFocusedScreen = true;
              enableScrollWheel = true;
              showApplications = true;
              showApplicationsHover = true;
              showBadge = false;
              colorizeIcons = false;
              unfocusedIconsOpacity = 1;
              groupedBorderOpacity = 1;
              iconScale = 0.8;
              focusedColor = "primary";
              occupiedColor = "secondary";
              emptyColor = "secondary";
              characterCount = 3;
              pillSize = 0.6;
            }

            {
              id = "ActiveWindow";
              showIcon = true;
              showText = false;
              maxWidth = 145;
              hideMode = "hidden";
              scrollingMode = "hover";
              colorizeIcons = false;
              textColor = "none";
              useFixedWidth = false;
            }
          ];

          center = [
            {
              id = "Clock";
              useCustomFont = true;
              customFont = "JetBrainsMono Nerd Font";
              clockColor = "none";
              formatHorizontal = "h:mm AP ddd, MMM dd";
              formatVertical = "HH mm - dd MM";
              tooltipFormat = "HH:mm ddd, MMM dd";
            }
          ];

          right = [
            {
              id = "Tray";
              blacklist = [];
              pinned = [];
              hidePassive = true;
              drawerEnabled = false;
              colorizeIcons = false;
              chevronColor = "none";
            }

            {
              id = "NotificationHistory";
              showUnreadBadge = true;
              unreadBadgeColor = "primary";
              hideWhenZero = false;
              hideWhenZeroUnread = false;
              iconColor = "none";
            }

            {
              id = "Volume";
              displayMode = "onhover";
              iconColor = "none";
              textColor = "none";
              middleClickCommand = "pwvucontrol || pavucontrol";
            }

            {
              id = "Brightness";
              displayMode = "onhover";
              iconColor = "none";
              textColor = "none";
              applyToAllMonitors = false;
            }

            {
              id = "ControlCenter";
              icon = "noctalia";
              useDistroLogo = false;
              customIconPath = "";
              enableColorization = false;
              colorizeDistroLogo = false;
              colorizeSystemIcon = "none";
              colorizeSystemText = "none";
            }
          ];
        };

        mouseWheelAction = "none";
        reverseScroll = false;
        mouseWheelWrap = true;

        middleClickAction = "none";
        middleClickFollowMouse = false;
        middleClickCommand = "";

        rightClickAction = "controlCenter";
        rightClickFollowMouse = true;
        rightClickCommand = "";

        screenOverrides = [];
      };
    };
  };
}
