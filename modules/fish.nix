{pkgs, ...}: {
  programs.fish = {
    enable = true;

    # fzf-fish replaces both fzf-tab (fzf-powered completions/search)
    # and the raw `fzf --zsh` integration, with directory previews included.
    # Requires: fzf, fd, bat — all should already be in your environment.
    plugins = [
      {
        name = "fzf-fish";
        src = pkgs.fishPlugins.fzf-fish.src;
      }
    ];

    interactiveShellInit = ''
      # PATH
      fish_add_path "$HOME/.local/bin"

      # Vi mode (equivalent of `bindkey -v`)
      fish_vi_key_bindings

      # Custom keybindings — must come after fish_vi_key_bindings
      bind -M insert \ep history-search-backward   # Alt+p
      bind -M insert \en history-search-forward    # Alt+n
      bind -M insert \ew backward-kill-word        # Alt+w (nearest to kill-region)

      # fzf-fish directory preview (mirrors fzf-tab's cd/zoxide preview)
      set -g FZF_FISH_PREVIEW_DIR_CMD "ls --color"

      # Oh My Posh — no cache-invalidation workaround needed in fish
      oh-my-posh init fish --config $HOME/.config/ohmyposh/zen.toml | source

      # Zoxide
      zoxide init fish | source
    '';

    shellAliases = {
      # System
      update = "nh os switch . -H nixos";
      hms = "nh home switch -c bahri ~/.myNixOS";
      nv = "nvim";
      c = "clear";
      cat = "bat";
      ".m" = "cd .myNixOS";
      ncg = "nix-collect-garbage -d";

      # Git
      br = "git branch --sort=-committerdate";
      co = "git checkout";
      cb = "git checkout -b";
      df = "git diff";
      ds = "git diff --staged";
      com = "git commit -a";
      ca = "git commit --amend";
      gs = "git stash";
      gp = "git pull";
      gpl = "git pull --rebase";
      gps = "git push";
      st = "git status";
      rb = "git rebase";
      mg = "git merge";
      rs = "git reset --soft HEAD~1";
      rh = "git reset --hard";
      cl = "git clone";
      glo = "git log --oneline --graph --decorate --all";
      lgp = "git log --graph --pretty=format:\"%Cred%h%Creset - %C(yellow)%d%Creset %s %C(green)(%cr)%C(bold blue) <%an>%Creset\" --abbrev-commit";
    };
  };
}
