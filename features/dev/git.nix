{...}: {
  programs.git = {
    enable = true;

    userName = "nickname-esco";
    userEmail = "133730657+nickname-esco@users.noreply.github.com";

    settings = {
      push.default = "simple";
      credential.helper = "cache --timeout=7200";
      init.defaultBranch = "main";
      log.decorate = "full";
      log.date = "iso";
      merge.conflictstyle = "diff3";
    };
  };
}
