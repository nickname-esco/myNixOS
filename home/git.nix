{
  ...
}:
{
  programs.git = {
    enable = true;

    settings = {
      push.default = "simple";
      credential.helper = "cache --timeout=7200";
      init.defaultBranch = "main";
      log.decorate = "full";
      log.date = "iso";
      merge.conflictstyle = "diff3";

      user = {
        name = "nickname-esco";
        email = "***REDACTED***";
      };
    };
  };
}
