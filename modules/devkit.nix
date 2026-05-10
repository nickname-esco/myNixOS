{ pkgs, ... }:
{
  home.packages = with pkgs; [
    # Go
    go
    gopls

    # Python
    uv
    python3
    pyright
    python3Packages.pip
    python3Packages.setuptools
    python3Packages.pynvim        # Neovim Python client (unpinned)

    # Rust — rustup manages its own rustc, no need for nixpkgs rustc
    rustup

    # C/C++
    llvmPackages.clang
    llvmPackages.libcxx
    lld

    # Java
    jdk

    # JavaScript/TypeScript
    nodejs

    # LSP servers
    nixd
    lua-language-server
    haskell-language-server
    nodePackages.bash-language-server
    nodePackages.typescript-language-server
    nodePackages.vscode-langservers-extracted

    # Formatters
    ruff           # replaces black + isort for Python
    alejandra      # Nix formatter (replaces nixpkgs-fmt)
    stylua
    gofumpt
    shfmt
    prettierd
    taplo

    # Shell / linting
    shellcheck
    nodePackages.eslint_d          # daemon version (replaces nodePackages.eslint)

    # Dependencies
    luajit
    luajitPackages.jsregexp

    # AST
    tree-sitter

    # Misc tools
    hyprls
    zls
    figlet
    toilet
  ];
}

