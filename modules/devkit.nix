{ pkgs, ... }:
{
  home.packages = with pkgs; [
    # Go
    go
    gopls

    # Python
    uv                                  # replaces pip for day-to-day use
    python3
    pyright
    python3Packages.setuptools
    python3Packages.pynvim              # Neovim Python client (unpinned)

    # Rust — rustup manages its own rustc
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
    nodePackages.bash-language-server
    nodePackages.typescript-language-server
    nodePackages.vscode-langservers-extracted

    # Formatters
    ruff           # Python formatter + linter (replaces black + isort)
    alejandra      # Nix formatter
    stylua
    gofumpt
    shfmt
    prettierd
    taplo

    # Shell / linting
    shellcheck
    nodePackages.eslint_d

    # Dependencies
    luajit
    luajitPackages.jsregexp

    # AST
    tree-sitter

    # Misc tools
    hyprls
    zls
    toilet                              # ASCII art (superset of figlet)
  ];
}

