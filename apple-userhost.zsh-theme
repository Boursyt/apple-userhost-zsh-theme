# ~/.oh-my-zsh/custom/themes/apple-userhost.zsh-theme
setopt promptsubst

# Git style [master+]
ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[green]%}["
ZSH_THEME_GIT_PROMPT_SUFFIX="]%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="+"
ZSH_THEME_GIT_PROMPT_CLEAN=""

# Segments
local APPLE="%{$fg_bold[white]%} ❯%{$reset_color%}"    # pomme blanche
local USERHOST="%{%B%F{39}%}%n%{%b%f%}%{$fg_bold[white]%}@%{$reset_color%}%{%B%F{39}%}%m%{%b%f%} %{$fg_bold[white]%}❯%{$reset_color%}"
local CWD="%{%B%F{208}%}%~%{%b%f%}"

# Barres blanches style “╭─ / ╰─”
local L1="%{$fg_bold[white]%}╭─%{$reset_color%}"
local L2="%{$fg_bold[white]%}╰─%{$reset_color%}"

# 2 lignes avec $ (ou # si root) sur la 2e
PROMPT="${L1} ${APPLE} ${USERHOST} ${CWD} \$(git_prompt_info)"$'\n'"${L2} %(!.#.$) "

RPROMPT=""

