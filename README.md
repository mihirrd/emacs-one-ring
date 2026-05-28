# emacs-one-ring

A beginner-friendly, literate Emacs configuration. The goal is to provide a solid starting point that is well-documented enough to understand, modify, and grow from.

![Emax](Emax.png)

## Requirements

- **Emacs 29+**
- [`ripgrep`](https://github.com/BurntSushi/ripgrep) — used by search packages

## Installation

```sh
git clone https://github.com/mihirrd/emacs-one-ring.git ~/.config/emacs/emacs-one-ring
ln -s ~/.config/emacs/emacs-one-ring ~/.emacs.d
```

Then launch Emacs. Packages will be installed automatically on first startup.

### Try without replacing your existing config (Emacs 29+)

```sh
emacs --init-directory=~/.config/emacs/emacs-one-ring
```

## What's included

| Area | Packages |
|---|---|
| **UI** | Dashboard, doom-modeline, nerd-icons, minimap, themes, rainbow-delimiters, which-key |
| **Completion** | Company, Helm |
| **Navigation** | Projectile, winner-mode, perspective (virtual desktops) |
| **Editing** | undo-tree, multiple-cursors, iedit, expand-region, yasnippet |
| **Org** | org-mode, org-roam, org-superstar, org-babel |
| **Git** | Magit |
| **LSP** | lsp-mode with Flycheck |
| **Languages** | Clojure (CIDER), Python, Rust, Java, Markdown |

## Configuration

The config is a [literate configuration](https://en.wikipedia.org/wiki/Literate_programming) written in `config.org`. All settings live there, documented inline. `init.el` simply loads it via `org-babel`.

To add or change settings, edit `config.org`. Blocks marked `:disabled t` are intentionally off — remove that keyword to enable them.

## Cloning to another machine

```sh
git clone https://github.com/mihirrd/emacs-one-ring.git ~/.config/emacs/emacs-one-ring
ln -s ~/.config/emacs/emacs-one-ring ~/.emacs.d
```

## License

MIT
