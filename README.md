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

Les couleurs sont définies via les codes 256-color de zsh (`%F{n}`) dans `apple-userhost.zsh-theme` :

- ligne `USERHOST` : couleur du `user@hostname` (actuellement `39`)
- ligne `CWD` : couleur du path (actuellement `208`)

Table des couleurs 256 : `for i in {0..255}; do print -Pn "%F{$i}%3d %f" $i; (( (i+1) % 16 )) || print; done`
