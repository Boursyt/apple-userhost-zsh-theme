# ~/.oh-my-zsh/custom/themes/apple-userhost.zsh-theme
setopt promptsubst

# ── Colors (zsh 256-color codes, see README for the color table) ──────────
APPLE_COLOR=white
USER_COLOR=39     # blue
HOST_COLOR=39     # blue
AT_COLOR=white
CHEVRON_COLOR=white
PATH_COLOR=208    # orange
BAR_COLOR=white
GIT_COLOR=green

# Git status [branch+]
ZSH_THEME_GIT_PROMPT_PREFIX="%{%B%F{$GIT_COLOR}%}["
ZSH_THEME_GIT_PROMPT_SUFFIX="]%{%b%f%}"
ZSH_THEME_GIT_PROMPT_DIRTY="+"
ZSH_THEME_GIT_PROMPT_CLEAN=""

# Segments
local APPLE="%{%B%F{$APPLE_COLOR}%}  ❯%{%b%f%}"    # apple
local USERHOST="%{%B%F{$USER_COLOR}%}%n%{%b%f%}%{%B%F{$AT_COLOR}%}@%{%b%f%}%{%B%F{$HOST_COLOR}%}%m%{%b%f%} %{%B%F{$CHEVRON_COLOR}%}❯%{%b%f%}"
local CWD="%{%B%F{$PATH_COLOR}%}%~%{%b%f%}"

# "╭─ / ╰─" style bars
local L1="%{%B%F{$BAR_COLOR}%}╭─%{%b%f%}"
local L2="%{%B%F{$BAR_COLOR}%}╰─%{%b%f%}"

# 2-line prompt, with $ (or # for root) on the 2nd line
PROMPT="${L1} ${APPLE} ${USERHOST} ${CWD} \$(git_prompt_info)"$'\n'"${L2} %(!.#.$) "

RPROMPT=""
