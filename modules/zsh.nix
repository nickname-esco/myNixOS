{
  ...
}:
{
  programs.zsh = {
    enable = true;
    initContent = ''
      source "$HOME/.config/zsh/zshrc"
    '';
  };
}
