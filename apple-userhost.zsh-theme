# ~/.oh-my-zsh/custom/themes/apple-userhost.zsh-theme
setopt promptsubst

# ── Catppuccin Mocha colors (truecolor hex values) ────────────────────────
USERHOST_COLOR="#89b4fa"   # Blue
PATH_COLOR="#94e2d5"       # Teal
ACCENT_COLOR="#cba6f7"     # Mauve

# Git status [branch+]
ZSH_THEME_GIT_PROMPT_PREFIX="%{%B%F{$ACCENT_COLOR}%}["
ZSH_THEME_GIT_PROMPT_SUFFIX="]%{%b%f%}"
ZSH_THEME_GIT_PROMPT_DIRTY="+"
ZSH_THEME_GIT_PROMPT_CLEAN=""

# Segments
local APPLE="%{%B%F{$ACCENT_COLOR}%}  ❯%{%b%f%}"    # apple
local USERHOST="%{%B%F{$USERHOST_COLOR}%}%n@%m%{%b%f%} %{%B%F{$ACCENT_COLOR}%}❯%{%b%f%}"
local CWD="%{%B%F{$PATH_COLOR}%}%~%{%b%f%}"
local PROMPT_CHAR="%{%B%F{$ACCENT_COLOR}%}%(!.#.$)%{%b%f%}"

# "╭─ / ╰─" style bars
local L1="%{%B%F{$ACCENT_COLOR}%}╭─%{%b%f%}"
local L2="%{%B%F{$ACCENT_COLOR}%}╰─%{%b%f%}"

# 2-line prompt, with $ (or # for root) on the 2nd line
PROMPT="${L1} ${APPLE} ${USERHOST} ${CWD} \$(git_prompt_info)"$'\n'"${L2} ${PROMPT_CHAR} "

RPROMPT=""
