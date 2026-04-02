{
  ...
}:
{
  programs.lazygit = {
    enable = true;
    settings = {
      disableStartupPopups = true;
      notARepository = "skip";
      promptToReturnFromSubprocess = false;
      update.method = "never";
      git = {
        commit.signOff = true;
        parseEmoji = true;
      };
      showListFooter = false;
      showRandomTip = false;
      showCommandLog = false;
      showBottomLine = false;
      nerdFontsVersion = "3";
      gui.theme.activeBorderColor = [
        "#61afef"
        "bold"
      ];
    };
  };
}
