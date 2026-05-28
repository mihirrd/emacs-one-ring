# Emax Usage Guide

A reference for every package in this configuration — what it does and how to use it.

---

## Table of Contents

- [UI](#ui)
- [Completion](#completion)
- [Core / Built-ins](#core--built-ins)
- [Navigation](#navigation)
- [Editing](#editing)
- [Org-mode](#org-mode)
- [Programming — General](#programming--general)
- [Programming — Clojure](#programming--clojure)
- [Programming — Python](#programming--python)
- [Programming — Rust](#programming--rust)
- [Programming — Java](#programming--java)
- [GitHub Copilot](#github-copilot)

---

## UI

### dashboard
Replaces the default scratch buffer with a startup screen that lists recently visited files.

| What | How |
|------|-----|
| Open dashboard | `M-x dashboard-refresh-buffer` |
| Navigate items | Arrow keys or `n` / `p` |
| Open recent file | `RET` on an item |

---

### moody
Replaces the stock mode-line with a tab-style modeline that also shows the current VC branch. No extra shortcuts — it activates automatically.

---

### minions
Hides all minor-mode lighters behind a single menu indicator (`;-`) in the mode-line, reducing clutter.

| What | How |
|------|-----|
| Open minor-modes menu | Click the `;-` indicator in the mode-line |

---

### minimap
Displays a VSCode-style bird's-eye overview of the current file in a narrow side window on the right. Enabled automatically in any `prog-mode` buffer. Flycheck errors are overlaid on it.

| What | How |
|------|-----|
| Toggle minimap | `M-x minimap-mode` |

---

### olivetti
Distraction-free writing mode. Centers the buffer at a comfortable reading width (100 chars, min 72) and hides the fringes.

| What | How |
|------|-----|
| Toggle olivetti mode | `C-c o` |

---

### Themes
The active theme is **doom-material-dark**. Additional themes are installed but deferred: `solo-jazz`, `monokai-pro`, `night-owl`, `kaolin`, and the full `doom-themes` collection.

| What | How |
|------|-----|
| Switch theme interactively | `M-x load-theme RET <name> RET` |

---

### paren (built-in)
Highlights the matching parenthesis when the cursor is on one. Zero delay.

---

### rainbow-delimiters
Colors nested parentheses/brackets at each nesting level with a different color. Active in all `prog-mode` buffers automatically.

---

### which-key
After a key prefix pause (0.1 s), pops up a bottom-window listing every available continuation of that key sequence.

| What | How |
|------|-----|
| Trigger manually | Begin any prefix and wait |
| Scroll the popup | `C-h` (previous page), `C-l` (next page) |

---

### helpful
Richer help buffers for functions, variables, and keys — shows source, docstring, references, and more.

| What | How |
|------|-----|
| Describe callable (function/macro/command) | `C-h f` |
| Describe variable | `C-h v` |
| Describe key | `C-h k` |
| Close help buffer | `q` (kills buffer and window) |

---

## Completion

### company
"Complete Anything" — in-buffer text completion framework. Completions pop up automatically after 1 character with no delay.

| What | How |
|------|-----|
| Accept selected candidate | `RET` or `TAB` |
| Navigate candidates | `M-n` / `M-p` or arrow keys |
| Abort completion | `C-g` |
| Trigger manually | `M-x company-complete` or `C-M-i` |

---

### helm
Incremental completion and narrowing framework. Replaces several built-in prompts with a fuzzy-search-capable Helm session.

| What | How |
|------|-----|
| Run a command (`M-x`) | `M-x` |
| Switch / open buffer | `C-x C-b` |
| Find file | `C-x C-f` |
| Browse kill-ring (yank) | `M-y` |
| Filtered bookmarks | `C-x r b` |
| **Inside a Helm session** | |
| Move to next/previous candidate | `C-n` / `C-p` |
| Accept candidate | `RET` |
| Open action menu | `TAB` |
| Dismiss Helm | `C-g` |
| Mark candidate | `C-SPC` |
| Toggle follow mode | `C-c C-f` |

---

## Core / Built-ins

### autorevert (built-in)
Automatically reverts a buffer when the underlying file changes on disk. Also tracks VC state changes.

---

### dired (built-in)
Emacs' built-in file manager. Files are listed with `ls -alht` (size-sorted, human-readable, includes hidden files).

| What | How |
|------|-----|
| Open dired | `C-x d` or `C-x C-f <dir> RET` |
| Open file or dir | `RET` |
| Open in other window | `o` |
| Rename file | `R` |
| Copy file | `C` |
| Delete file (to trash) | `D` |
| Create directory | `+` |
| Mark file | `m` |
| Unmark file | `u` |
| Unmark all | `U` |
| Execute marked operations | `x` |
| Refresh listing | `g` |
| Close dired buffer | `q` |

---

### eldoc (built-in)
Shows inline documentation (function signature, variable value) in the echo area as you type. Activates globally with a 0.2 s delay.

---

### perspective
Virtual workspaces ("perspectives") that keep buffer lists separate per project/task. The prefix key is `F8`.

| What | How |
|------|-----|
| Switch to a perspective | `F8 s` |
| Create new perspective | `F8 n` |
| Kill perspective | `F8 k` |
| Switch to last perspective | `F8 F8` |
| Rename perspective | `F8 r` |
| List perspectives | `F8 b` |
| Add buffer to perspective | `F8 a` |
| Remove buffer from perspective | `F8 d` |
| Save layout to disk | `F8 w` |
| Load layout from disk | `F8 l` |

---

### try
Temporarily install and try any ELPA/MELPA package without it being permanently added.

| What | How |
|------|-----|
| Try a package | `M-x try RET <package-name> RET` |

---

### auto-package-update
Prompts on startup when package updates are available and can update them all at once.

| What | How |
|------|-----|
| Update packages manually | `M-x auto-package-update-now` |

---

## Navigation

### mwim ("Move Where I Mean")
Smarter `C-a` and `C-e`. First press goes to the first non-whitespace character; second press goes to the true beginning/end of the line.

| What | How |
|------|-----|
| Smart line beginning | `C-a` or `<Home>` |
| Smart line end | `C-e` or `<End>` |

---

### winner-mode (built-in)
Undo and redo window layout changes (splits, closes, resizes).

| What | How |
|------|-----|
| Undo window change | `C-c <left>` |
| Redo window change | `C-c <right>` |

---

## Editing

### undo-tree
Visualizes Emacs' non-linear undo history as a navigable tree. Every state is reachable.

| What | How |
|------|-----|
| Undo | `C-/` or `C-_` |
| Redo | `C-?` or `M-_` |
| Open visual undo tree | `C-x u` |
| **Inside the tree visualizer** | |
| Move to older state | `p` or `C-p` |
| Move to newer state | `n` or `C-n` |
| Switch branch | `b` / `f` |
| Toggle diff panel | `d` |
| Quit visualizer | `q` |

---

### anzu
Enhances `query-replace` with a live preview of replacements and a match counter in the mode-line.

| What | How |
|------|-----|
| Query replace (literal) | `M-%` |
| Query replace (regexp) | `C-M-%` |
| **During replacement** | |
| Replace this match | `y` |
| Skip this match | `n` |
| Replace all remaining | `!` |
| Quit | `q` or `C-g` |

---

### iedit
Edit all occurrences of a symbol/region simultaneously in the buffer (or within a narrowed region).

| What | How |
|------|-----|
| Toggle iedit on symbol at point | `C-;` |
| Restrict to function scope | `C-u C-;` (once for defun, twice for line) |
| Navigate between occurrences | `M-n` / `M-p` |
| Exit iedit | `C-;` again or `C-g` |

---

### expand-region
Incrementally expand the selected region by semantic units (word → symbol → string → expression → block…).

| What | How |
|------|-----|
| Expand region | `C-c e` |
| Contract region (undo last expansion) | `u` (while region is active) |
| Reset to no selection | `i` (while region is active) |

---

## Org-mode

### org (built-in/enhanced)
Org-mode for notes, tasks, literate programming, and agenda management.

| What | How |
|------|-----|
| Open agenda | `C-c a` |
| Capture a note/task | `C-c c` |
| Store a link | `C-c S` |
| Follow link | `C-c C-o` |
| Insert heading | `M-RET` |
| Promote / demote heading | `M-LEFT` / `M-RIGHT` |
| Move heading up / down | `M-UP` / `M-DOWN` |
| Cycle visibility (fold/unfold) | `TAB` (on heading) |
| Cycle all headings | `S-TAB` |
| Toggle TODO state | `C-c C-t` |
| Set priority | `C-c ,` |
| Schedule item | `C-c C-s` |
| Set deadline | `C-c C-d` |
| Refile heading | `C-c C-w` |
| Insert code block | `C-c C-, s` then type `emacs-lisp` (or other lang) |
| Execute code block | `C-c C-c` (on a src block) |
| Toggle inline images | `C-c C-x C-v` |
| Export / publish | `C-c C-e` |
| Insert org-cliplink link | `M-x org-cliplink` |

---

### org-superstar
Replaces leading asterisks in org headings with fancy Unicode bullets, and list hyphens/plusses with Unicode glyphs. Activated automatically in org buffers.

---

### org-babel
Enables execution of code blocks inside org files. Configured for `emacs-lisp`, `clojure`, `python`, and `shell`.

| What | How |
|------|-----|
| Execute block at point | `C-c C-c` |
| Execute all blocks in buffer | `C-c C-v b` |
| Edit block in dedicated buffer | `C-c '` |
| Tangle all blocks to file | `C-c C-v t` |

---

## Programming — General

### projectile
Project management: find files, grep, run tests, and switch between projects.

All commands are under the `C-c p` prefix.

| What | How |
|------|-----|
| Find file in project | `C-c p f` |
| Switch project | `C-c p p` (opens in new Perspective) |
| Grep / search in project | `C-c p s r` (ripgrep) |
| Run project tests | `C-c p t` |
| Compile project | `C-c p c` |
| Kill all project buffers | `C-c p k` |
| Switch to project buffer | `C-c p b` |
| Recently visited project files | `C-c p e` |
| Invalidate cache | `C-c p i` |

---

### lsp-mode
Language Server Protocol client. Provides IDE features (completions, go-to-definition, find references, rename, etc.) for any language with an LSP server. Keymap prefix: `C-c l`.

| What | How |
|------|-----|
| Go to definition | `C-c l g g` or `M-.` |
| Go back | `M-,` |
| Find references | `C-c l g r` |
| Rename symbol | `C-c l r r` |
| Code action / quick fix | `C-c l a a` |
| Format buffer | `C-c l = =` |
| Format region | `C-c l = r` |
| Toggle inlay hints | `C-c l T i` |
| Show hover docs | `C-c l h h` |
| Describe symbol at point | `C-c l h s` |
| Restart LSP server | `C-c l w r` |
| Show LSP log | `C-c l s l` |
| List workspace symbols | `C-c l g s` |

---

### lsp-ui
Visual UI layer on top of `lsp-mode`: hover popups, a sideline showing code-action lightbulbs, and a peek window for definitions/references.

| What | How |
|------|-----|
| Peek definition | `C-c l G g` |
| Peek references | `C-c l G r` |
| Toggle lsp-ui-doc popup | `C-c l T d` |
| Toggle sideline | `C-c l T s` |

---

### magit
Full-featured Git interface inside Emacs.

| What | How |
|------|-----|
| Open Magit status | `C-x g` |
| **Inside Magit status** | |
| Stage file / hunk | `s` |
| Unstage file / hunk | `u` |
| Discard change | `k` |
| Commit | `c c` |
| Push | `P p` |
| Pull | `F p` |
| Branch menu | `b` |
| Log menu | `l` |
| Diff at point | `d` |
| Quit Magit window | `q` |

---

### git-timemachine
Step through the git history of the current file without leaving the buffer.

| What | How |
|------|-----|
| Start timemachine | `C-c g t` |
| **Inside timemachine** | |
| Previous revision | `p` |
| Next revision | `n` |
| Jump to nth revision | `t` |
| Copy abbreviated hash | `w` |
| Copy full hash | `W` |
| Show blame for revision | `b` |
| Quit timemachine | `q` |

---

### paredit
Structural editing for Lisp-family languages (Emacs Lisp, Clojure, Common Lisp). Keeps parentheses balanced automatically.

| What | How |
|------|-----|
| Slurp (absorb next sexp into current list) — forward | `C-)` |
| Barf (eject last sexp from current list) — forward | `C-}` |
| Slurp — backward | `C-(` |
| Barf — backward | `C-{` |
| Splice (remove surrounding parens) | `M-s` |
| Split sexp | `M-S` |
| Join sexps | `M-J` |
| Raise sexp (replace parent with current sexp) | `M-r` |
| Wrap in parens | `M-(` |
| Move to opening paren | `C-M-u` |
| Move to closing paren | `C-M-d` |
| Forward sexp | `C-M-f` |
| Backward sexp | `C-M-b` |

---

### ripgrep / helm-rg
Fast full-text search powered by ripgrep, surfaced through Helm.

| What | How |
|------|-----|
| Search with ripgrep via Helm | `C-c y` |
| Search from projectile | `C-c p s r` |
| Standalone deadgrep | `M-x deadgrep` |

---

### flycheck
On-the-fly syntax checking. Squiggles under errors/warnings; error list in a separate buffer.

| What | How |
|------|-----|
| List errors in buffer | `C-c ! l` |
| Next error | `C-c ! n` |
| Previous error | `C-c ! p` |
| Explain error at point | `C-c ! e` |
| Select checker manually | `C-c ! s` |
| Disable checker | `C-c ! d` |
| Run checker manually | `C-c ! c` |

---

### markdown-mode
Major mode for `.md` and `.markdown` files. Markup is hidden by default for a cleaner reading experience.

| What | How |
|------|-----|
| Toggle live preview (via pandoc → EWW) | `C-c C-c p` |
| Toggle markup hiding | `C-c C-x C-m` |
| Insert bold | `C-c C-s b` |
| Insert italic | `C-c C-s i` |
| Insert code span | `C-c C-s c` |
| Insert link | `C-c C-l` |
| Insert image | `C-c C-i` |
| Insert heading (cycle level) | `C-c C-t h` |
| Follow link | `C-c C-o` |
| Move to next heading | `C-c C-n` |
| Move to previous heading | `C-c C-p` |
| Preview in browser | `C-c C-c v` |

---

## Programming — Clojure

### clojure-mode + cider
CIDER is the Clojure interactive development environment. It connects to a running nREPL process for evaluation, documentation lookup, and more.

| What | How |
|------|-----|
| Start REPL (jack in) | `C-c M-j` |
| Connect to existing REPL | `C-c M-c` |
| Evaluate expression at point | `C-c C-e` |
| Evaluate top-level form | `C-c C-c` |
| Evaluate buffer | `C-c C-k` |
| Load file | `C-c C-l` |
| Switch to REPL buffer | `C-c C-z` |
| Jump to definition | `M-.` |
| Jump back | `M-,` |
| Show documentation | `C-c C-d d` |
| Show javadoc | `C-c C-d j` |
| Run tests in namespace | `C-c C-t n` |
| Run all tests | `C-c C-t a` |
| Interrupt evaluation | `C-c C-b` |
| Quit CIDER | `C-c C-q` |
| Format buffer (cljfmt) | `C-c C-f` |

---

### clj-refactor
Automated refactoring tools for Clojure. All commands are under the `C-c C-m` prefix.

| What | How |
|------|-----|
| Add `require` to ns | `C-c C-m ar` |
| Add `import` to ns | `C-c C-m ai` |
| Add `use` to ns | `C-c C-m au` |
| Clean namespace form | `C-c C-m cn` |
| Introduce `let` binding | `C-c C-m il` |
| Move to `let` | `C-c C-m ml` |
| Extract function | `C-c C-m ef` |
| Rename symbol | `C-c C-m rs` |
| Thread first (`->`) | `C-c C-m th` |
| Thread last (`->>`) | `C-c C-m tl` |
| Unwind thread | `C-c C-m uw` |

---

### flycheck-clj-kondo
Integrates `clj-kondo` (Clojure linter) into Flycheck. Linting runs automatically on save — see [flycheck](#flycheck) for navigation shortcuts.

---

## Programming — Python

### lsp-pyright
Pyright language server client for Python. Provides type checking, auto-imports, and hover docs. All LSP shortcuts (`C-c l …`) apply — see [lsp-mode](#lsp-mode).

---

### blacken
Runs the **Black** formatter on the Python buffer automatically on every save (line length: 88).

| What | How |
|------|-----|
| Format buffer manually | `M-x blacken-buffer` |
| Toggle blacken for this buffer | `M-x blacken-mode` |

---

### py-isort
Runs **isort** on Python imports automatically before every save in `python-mode` buffers.

| What | How |
|------|-----|
| Sort imports manually | `M-x py-isort-buffer` |

---

### dap-mode
Debug Adapter Protocol client — like VS Code's debugger. Uses **debugpy** for Python.

| What | How |
|------|-----|
| Start / launch debug session | `M-x dap-debug` |
| Add breakpoint at point | `C-c d b` / `M-x dap-breakpoint-add` |
| Delete breakpoint | `M-x dap-breakpoint-delete` |
| Toggle breakpoint | `M-x dap-breakpoint-toggle` |
| Continue | `M-x dap-continue` |
| Step over | `M-x dap-next` |
| Step into | `M-x dap-step-in` |
| Step out | `M-x dap-step-out` |
| Show locals panel | `M-x dap-ui-locals` |
| Show sessions panel | `M-x dap-ui-sessions` |
| Disconnect | `M-x dap-disconnect` |

---

### pyvenv
Manages Python virtual environments. The active venv name is shown in the mode-line `[venv-name]`.

| What | How |
|------|-----|
| Activate a venv (select directory) | `M-x pyvenv-activate` |
| Deactivate current venv | `M-x pyvenv-deactivate` |
| Workon (select from `WORKON_HOME`) | `M-x pyvenv-workon` |

---

## Programming — Rust

### rustic + cargo
Rust major mode with `rust-analyzer` via LSP. Code is auto-formatted with `rustfmt` on save. All LSP shortcuts (`C-c l …`) apply.

| What | How |
|------|-----|
| Build project | `C-c C-c C-b` |
| Run project | `C-c C-c C-r` |
| Run tests | `C-c C-c C-t` |
| Run clippy | `C-c C-c C-l` |
| **cargo minor-mode prefix** | `C-c C-c` |
| cargo build | `C-c C-c b` |
| cargo run | `C-c C-c r` |
| cargo test | `C-c C-c t` |
| cargo clean | `C-c C-c e` |
| cargo check | `C-c C-c k` |

---

## Programming — Java

### lsp-java
Eclipse JDT Language Server integration for Java. Requires Java 21 (auto-configured for Temurin 21). Auto-organizes imports on save, uses Google style formatting. All LSP shortcuts apply.

| What | How |
|------|-----|
| Organize imports | Auto on save, or `C-c l = o` |
| Generate getters/setters | `C-c l a a` → choose action |
| Override methods | `C-c l a a` → choose action |
| Run / debug (via dap-java) | `M-x dap-java-run-test-method` |
| Debug test at point | `M-x dap-java-debug-test-method` |
| Switch between source/test | `C-c C-t` |

---

## GitHub Copilot

### copilot
Inline AI ghost-text completions (like VS Code Copilot). Active in all `prog-mode` buffers. Authenticate once with `M-x copilot-login`.

| What | How |
|------|-----|
| **First-time setup** | `M-x copilot-login` |
| Accept full suggestion | `Tab` |
| Accept suggestion word-by-word | `M-f` |
| Accept suggestion line-by-line | `M-RET` |
| Next suggestion | `M-n` |
| Previous suggestion | `M-p` |
| Dismiss suggestion | `C-g` |
| Toggle copilot for buffer | `M-x copilot-mode` |
| Manually trigger completion | `M-x copilot-complete` |
