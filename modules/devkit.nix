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

    # Rust
    rustc
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
    nodePackages.eslint
    nodePackages.bash-language-server
    nodePackages.typescript-language-server
    nodePackages.vscode-langservers-extracted

    # Formatters
    black
    nodePackages.prettier
    isort
    stylua
    nixpkgs-fmt
    gofumpt
    shfmt

    # Dependencies
    luajit
    luajitPackages.jsregexp
    python312Packages.pynvim
    vimPlugins.telescope-nvim
    luajitPackages.luarocks_bootstrap

    # AST
    tree-sitter
  ];
}
