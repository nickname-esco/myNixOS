# ❄️ My NixOS Configuration

A declarative **NixOS + Home Manager** setup for a reproducible, terminal-first development environment with modular tooling and optional cybersecurity and audio packages.

> **Target:** NixOS 25.11 / Home Manager 25.11

## Highlights

- **Shell:** Zsh with `zinit`, `zoxide`, and Oh My Posh
- **Terminal:** Alacritty with transparency and IBM Plex Mono #<-- installed this font using google
- **Multiplexer:** Tmux with Vim-style navigation and popup workflows
- **Editor:** Neovim via `nixvim`
- **CLI Workflow:** `eza`, `bat`, `fzf`, `yazi`, `direnv`, `nh`
- **Development:** Go, Python, Rust, C/C++, Java, JS/TS
- **Optional toolkits:** Cybersecurity and audio production

## Stack

| Area | Tools |
|------|------|
| Shell | Zsh, zinit, zoxide, Oh My Posh |
| Terminal | Alacritty |
| Multiplexer | Tmux |
| Editor | Neovim (`nixvim`) |
| File Management | `eza`, `yazi` |
| Git Workflow | Git config, lazygit |
| Productivity | `bat`, `fzf`, `direnv`, `nh` |
| Development | Go, Python (uv), Rust, C/C++, Java, Node.js / TypeScript |

## Neovim

Configured through `nixvim` with:

- Catppuccin Mocha theme
- `blink-cmp` completion
- Treesitter
- Telescope
- LSP support
- `conform.nvim` formatting

### Common keymaps

- `<leader>ff` — find files
- `<leader>lg` — live grep
- `<leader>fe` — toggle file browser
- `<leader>t` — floating terminal
- `jk` — escape insert mode
- `<leader>.` — toggle comment
- `[d` / `]d` — previous / next diagnostic

## Tmux

- Prefix: `Ctrl-a`
- Vim-style pane navigation with `h/j/k/l`
- Seamless movement with `vim-tmux-navigator`

### Popup bindings

- `C-y` — lazygit
- `C-r` — yazi
- `C-n` — new session
- `C-j` — session switcher
- `C-z` — edit `flake.nix`
- `C-t` — temporary shell

## Alacritty

- IBM Plex Mono font
- Transparent background
- No window decorations
- Custom color scheme

## Shell and CLI Tools

- Zsh sources `~/.config/zsh/zshrc`
- `eza` replaces `ls`
- `bat` used as pager and `man` pager
- `zoxide` for fast directory jumping
- `oh-my-posh` for prompt theming

## 📁 Config Directory

The `config/` directory contains tool-specific configurations and backups:

- **`nvf.bak`** – backup of a previous NVF configuration  
- **`ohmyposh/`**
  - `base.json`
  - `zen.toml`  
- **`wezterm/`**
  - `.wezterm.lua`  
- **`zsh/`**
  - `zshrc` 

## Development Tooling

### Languages
Go · Python · Rust · C/C++ · Java · JavaScript/TypeScript

### LSPs
`gopls`, `pyright`, `rust-analyzer`, `clangd`, `jdtls`, `ts_ls`, `lua_ls`, `nil_ls`, `hyprls`, `marksman`

### Formatters
`black`, `prettierd`, `stylua`, `nixpkgs-fmt`, `gofumpt`, `shfmt`

## Optional Modules

### Cybersecurity

Includes tools such as:

- Recon: `amass`, `subfinder`, `nuclei`, `gau`, `theharvester`
- Scanning: `nmap`, `masscan`, `rustscan`, `nikto`, `sqlmap`, `metasploit`
- Cracking: `hashcat`, `john`, `hydra`
- Forensics: `volatility3`, `sleuthkit`, `foremost`, `exiftool`
- Networking: `wireshark`, `tcpdump`, `mitmproxy`, `bettercap`, `snort`

### Audio Production

Includes tools such as:

- DAW: `ardour`
- Drum tools: `hydrogen`, `x42-avldrums`
- Synths: `surge`, `zynaddsubfx`, `yoshimi`
- Sampler: `sfizz`
- Plugins / effects: `carla`, `calf`

## Design Goals

- Declarative and reproducible
- Modular and easy to extend
- Terminal-centric workflow
- Editor and shell integration
- Optional feature sets kept isolated

## Credits

Built with NixOS, Home Manager, and nixvim. Inspired by reproducible ZaneyOS (Tyler Kelley) and Dreans of Code (Elliott Minns).
