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
    bash-language-server
    typescript-language-server
    vscode-langservers-extracted

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
    eslint_d

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
