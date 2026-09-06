# apple-userhost

A custom Oh My Zsh theme: a 2-line prompt with an apple icon, `user@hostname`, path, and git status. Its default palette is designed for [Catppuccin Mocha](https://github.com/catppuccin/catppuccin).

![preview](preview.png)

```
╭─  ❯ theo@MacBook-Pro ❯ ~/dev/apple-userhost-zsh-theme [main]
╰─ $
```

- `user@hostname`: Blue
- path (`%~`): Yellow
- git status: Mauve
- bars, prompt character, apple and chevrons: Text

## Installation

1. Copy (or symlink) `apple-userhost.zsh-theme` into `$ZSH_CUSTOM/themes/`:

   ```sh
   ln -s /path/to/apple-userhost-zsh-theme/apple-userhost.zsh-theme \
         "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/apple-userhost.zsh-theme"
   ```

2. In `~/.zshrc`, set the theme:

   ```sh
   ZSH_THEME="apple-userhost"
   ```

3. Reload your shell: `source ~/.zshrc`.

## Customizing colors

Every element has its own variable at the top of `apple-userhost.zsh-theme`. The defaults use Catppuccin Mocha truecolor hex values; change any value and reload your shell to customize them:

| Variable           | Elements                                    | Mocha color      |
|--------------------|---------------------------------------------|------------------|
| `USERHOST_COLOR`   | `user@hostname`                             | Blue `#89b4fa`   |
| `PATH_COLOR`       | current path (`%~`)                         | Yellow `#f9e2af` |
| `GIT_COLOR`        | git status                                  | Mauve `#cba6f7`  |
| `DECORATION_COLOR` | bars, `$` / `#`, apple and chevrons         | Text `#cdd6f4`   |

The palette requires a terminal with truecolor support. Zsh color names and 256-color codes remain valid alternatives.
