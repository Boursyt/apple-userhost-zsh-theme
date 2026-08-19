# ~/.oh-my-zsh/custom/themes/apple-userhost.zsh-theme
setopt promptsubst

# ── Couleurs (codes 256-color zsh, voir README pour la table) ──────────────
APPLE_COLOR=white
USER_COLOR=39     # bleu
HOST_COLOR=39     # bleu
AT_COLOR=white
CHEVRON_COLOR=white
PATH_COLOR=208    # orange
BAR_COLOR=white
GIT_COLOR=green

# Git style [master+]
ZSH_THEME_GIT_PROMPT_PREFIX="%{%B%F{$GIT_COLOR}%}["
ZSH_THEME_GIT_PROMPT_SUFFIX="]%{%b%f%}"
ZSH_THEME_GIT_PROMPT_DIRTY="+"
ZSH_THEME_GIT_PROMPT_CLEAN=""

# Segments
local APPLE="%{%B%F{$APPLE_COLOR}%} ❯%{%b%f%}"    # pomme
local USERHOST="%{%B%F{$USER_COLOR}%}%n%{%b%f%}%{%B%F{$AT_COLOR}%}@%{%b%f%}%{%B%F{$HOST_COLOR}%}%m%{%b%f%} %{%B%F{$CHEVRON_COLOR}%}❯%{%b%f%}"
local CWD="%{%B%F{$PATH_COLOR}%}%~%{%b%f%}"

# Barres style "╭─ / ╰─"
local L1="%{%B%F{$BAR_COLOR}%}╭─%{%b%f%}"
local L2="%{%B%F{$BAR_COLOR}%}╰─%{%b%f%}"

# 2 lignes avec $ (ou # si root) sur la 2e
PROMPT="${L1} ${APPLE} ${USERHOST} ${CWD} \$(git_prompt_info)"$'\n'"${L2} %(!.#.$) "

RPROMPT=""
