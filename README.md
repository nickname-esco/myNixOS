# ❄️ My NixOS Configuration

This repository contains my personal **NixOS** and **Home Manager** configuration.  
It provides a reproducible, declarative environment focused on developer productivity, a modern terminal workflow, and optional toolkits for cybersecurity and audio production.

> **Status**: Built for NixOS 25.11 / Home Manager release‑25.11

---

## 📦 What’s inside?

| Component          | Description                                                                                  |
|--------------------|----------------------------------------------------------------------------------------------|
| **Shell**          | Zsh with `zinit`, `zoxide`, and Oh My Posh prompt                                            |
| **Terminal**       | Alacritty – blurred, transparent, IBM Plex Mono font                                        |
| **Multiplexer**    | Tmux with Vim‑style navigation, popups (lazygit, yazi, session switcher)                    |
| **Editor**         | Neovim (via `nixvim`) – LSP, Treesitter, Telescope, Catppuccin theme, `blink-cmp` completion |
| **File listing**   | `eza` replaces `ls` – icons, git integration, tree view                                      |
| **Git**            | Simple global config with credential caching                                                |
| **Utilities**      | `bat` (cat clone), `lazygit`, `direnv`, `nh` (Nix helper), `fzf`, `yazi`, `zoxide`, …       |
| **Development**    | Go, Python (uv), Rust, C/C++, Java, JS/TS, plus LSP servers and formatters                  |
| **Security** (opt) | `nmap`, `metasploit`, `hashcat`, `wireshark`, `sqlmap`, …                                    |
| **Audio** (opt)    | Ardour, Hydrogen, surge, sfizz, calf effects, …                                              |

> 🔧 The cybersecurity and audio modules are **optional** – you can comment them out if not needed.

---

## 🚀 Getting started

### Prerequisites

- [NixOS](https://nixos.org/) (or Nix on another Linux distro with Home Manager)
- Nix **flakes** enabled (`experimental-features = nix-command flakes`)
- [Home Manager](https://github.com/nix-community/home-manager) (standalone or as a NixOS module)

### 1. Clone the repository

```bash
git clone https://github.com/nickame-esco/myNixOS.git ~/.dotfiles
cd ~/.dotfiles

2. Build and activate the configuration

You have two options:
Option A: Using home-manager directly
bash

home-manager switch --flake .#bahri

Option B: Using nh (if you have it installed)
bash

nh home switch .

    The flake defines one Home Manager user: bahri.
    The NixOS configuration is named nixos – you can build it with sudo nixos-rebuild switch --flake .#nixos.

3. First launch tips

    Start a new terminal – Zsh should be your default shell.

    Launch nvim – plugins will be installed automatically on first run.

    Tmux prefix is Ctrl-a (instead of the default Ctrl-b).

    Your Zsh personal config can be placed in ~/.config/zsh/zshrc (the zsh.nix module already sources it).

📁 Configuration structure
File	Purpose
flake.nix	Entry point – defines inputs, outputs, NixOS & Home Manager configs
flake.lock	Locked inputs for reproducibility
configuration.nix	NixOS system configuration (imports core/, hardware, nix-ld)
home.nix	Home Manager entry – imports ./modules, sets env vars
modules/ (all .nix)	
├─ zsh.nix	Enables Zsh, sources ~/.config/zsh/zshrc
├─ utils.nix	Common CLI tools (jq, fd, fzf, yazi, zoxide, oh-my-posh, …)
├─ lazygit.nix	Lazygit TUI configuration
├─ nixvim.nix	Neovim config – plugins, keymaps, LSP servers
├─ tmux.nix	Tmux settings, plugins, popup bindings
├─ alacritty.nix	Alacritty terminal – font, opacity, colours
├─ eza.nix	eza as ls replacement with aliases
├─ git.nix	Global Git configuration
├─ bat.nix	bat theming and MANPAGER integration
├─ direnv.nix	Enables direnv
├─ nh.nix	nh helper (clean, flake path)
├─ unfree.nix	Allows unfree packages
├─ devkit.nix	Development tools, LSP servers, formatters
├─ cybersecurity.nix	Pentesting tools (optional)
└─ ardour.nix	Audio production packages (optional)
# ❄️ My NixOS Configuration

A declarative **NixOS + Home Manager** setup for a reproducible, terminal-first development environment with modular tooling and optional cybersecurity and audio packages.

> **Target:** NixOS 25.11 / Home Manager 25.11

## Highlights

- **Shell:** Zsh with `zinit`, `zoxide`, and Oh My Posh
- **Terminal:** Alacritty with transparency and IBM Plex Mono
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

## Repository Structure

```text
flake.nix
flake.lock
configuration.nix
home.nix
modules/
├─ zsh.nix
├─ utils.nix
├─ lazygit.nix
├─ nixvim.nix
├─ tmux.nix
├─ alacritty.nix
├─ eza.nix
├─ git.nix
├─ bat.nix
├─ direnv.nix
├─ nh.nix
├─ unfree.nix
├─ devkit.nix
├─ cybersecurity.nix
└─ ardour.nix
```

## Design Goals

- Declarative and reproducible
- Modular and easy to extend
- Terminal-centric workflow
- Editor and shell integration
- Optional feature sets kept isolated

## Credits

Built with NixOS, Home Manager, and nixvim. Inspired by reproducible ZaneyOS (Tyler Kelley) dotfile and workstation setups across the Nix ecosystem.
