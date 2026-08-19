# apple-userhost

Thème Oh My Zsh custom, prompt sur 2 lignes avec pomme, `user@hostname`, path et statut git.

```
╭─  theo@MacBook-Pro ❯ ~/iac/infra-loadtest [staging+]
╰─ $
```

- ` ❯` (pomme) et les barres `╭─`/`╰─` : blanc
- `user@hostname` : bleu (256-color `39`), en gras
- path (`%~`) : orange (256-color `208`), en gras
- statut git (`[branche+]`) : vert

## Installation

1. Copier (ou symlink) `apple-userhost.zsh-theme` dans `$ZSH_CUSTOM/themes/` :

   ```sh
   ln -s /chemin/vers/apple-userhost-zsh-theme/apple-userhost.zsh-theme \
         "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/apple-userhost.zsh-theme"
   ```

2. Dans `~/.zshrc`, définir le thème :

   ```sh
   ZSH_THEME="apple-userhost"
   ```

3. Recharger le shell : `source ~/.zshrc`.

## Personnaliser les couleurs

Chaque élément a sa propre variable en haut de `apple-userhost.zsh-theme` — change juste la valeur (nom de couleur ou code 256-color) et recharge le shell :

| Variable         | Élément                          | Valeur par défaut |
|------------------|-----------------------------------|--------------------|
| `APPLE_COLOR`    | pomme ` ❯`                       | `white`            |
| `USER_COLOR`     | `user` (avant le `@`)             | `39` (bleu)        |
| `HOST_COLOR`     | `hostname` (après le `@`)         | `39` (bleu)        |
| `AT_COLOR`       | le `@`                            | `white`            |
| `CHEVRON_COLOR`  | le `❯` après le host              | `white`            |
| `PATH_COLOR`     | le chemin courant (`%~`)          | `208` (orange)     |
| `BAR_COLOR`      | les barres `╭─` / `╰─`            | `white`            |
| `GIT_COLOR`      | le statut git `[branche+]`        | `green`            |

Table des couleurs 256 : `for i in {0..255}; do print -Pn "%F{$i}%3d %f" $i; (( (i+1) % 16 )) || print; done`
