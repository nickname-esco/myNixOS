{pkgs, ...}: {
  home.packages = with pkgs; [
    # Go
    go
    gopls

    # Python
    uv
    python3
    pyright
    python3Packages.setuptools
    python3Packages.pynvim

    # Rust
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
    ruff
    alejandra
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
    toilet
  ];
}
