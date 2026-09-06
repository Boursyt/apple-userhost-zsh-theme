# ~/.oh-my-zsh/custom/themes/apple-userhost.zsh-theme
setopt promptsubst

# ── Catppuccin Mocha colors (truecolor hex values) ────────────────────────
USERHOST_COLOR="#89b4fa"   # Blue
PATH_COLOR="#f9e2af"       # Yellow
GIT_COLOR="#cba6f7"        # Mauve
DECORATION_COLOR="#cdd6f4" # Text

# Git status [branch+]
ZSH_THEME_GIT_PROMPT_PREFIX="%{%B%F{$GIT_COLOR}%}["
ZSH_THEME_GIT_PROMPT_SUFFIX="]%{%b%f%}"
ZSH_THEME_GIT_PROMPT_DIRTY="+"
ZSH_THEME_GIT_PROMPT_CLEAN=""

# Segments
local APPLE="%{%B%F{$DECORATION_COLOR}%}  ❯%{%b%f%}"    # apple
local USERHOST="%{%B%F{$USERHOST_COLOR}%}%n@%m%{%b%f%} %{%B%F{$DECORATION_COLOR}%}❯%{%b%f%}"
local CWD="%{%B%F{$PATH_COLOR}%}%~%{%b%f%}"
local PROMPT_CHAR="%{%B%F{$DECORATION_COLOR}%}%(!.#.$)%{%b%f%}"

# "╭─ / ╰─" style bars
local L1="%{%B%F{$DECORATION_COLOR}%}╭─%{%b%f%}"
local L2="%{%B%F{$DECORATION_COLOR}%}╰─%{%b%f%}"

# 2-line prompt, with $ (or # for root) on the 2nd line
PROMPT="${L1} ${APPLE} ${USERHOST} ${CWD} \$(git_prompt_info)"$'\n'"${L2} ${PROMPT_CHAR} "

RPROMPT=""
