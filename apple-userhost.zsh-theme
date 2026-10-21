# ~/.oh-my-zsh/custom/themes/apple-userhost.zsh-theme
setopt promptsubst

# Git status [branch+]
ZSH_THEME_GIT_PROMPT_DIRTY="+"
ZSH_THEME_GIT_PROMPT_CLEAN=""

# ── Catppuccin palette (Mocha in dark mode, Latte in light mode) ──────────
_apple_userhost_build_prompt() {
  if [[ "$(defaults read -g AppleInterfaceStyle 2>/dev/null)" == "Dark" ]]; then
    # Mocha
    local USERHOST_COLOR="#89b4fa"   # Blue
    local PATH_COLOR="#f9e2af"       # Yellow
    local GIT_COLOR="#cba6f7"        # Mauve
    local DECORATION_COLOR="#cdd6f4" # Text
  else
    # Latte
    local USERHOST_COLOR="#1e66f5"   # Blue
    local PATH_COLOR="#fe640b"       # Peach (Latte yellow is too pale on white)
    local GIT_COLOR="#8839ef"        # Mauve
    local DECORATION_COLOR="#4c4f69" # Text
  fi

  ZSH_THEME_GIT_PROMPT_PREFIX="%{%B%F{$GIT_COLOR}%}["
  ZSH_THEME_GIT_PROMPT_SUFFIX="]%{%b%f%}"

  # Segments
  local APPLE="%{%B%F{$DECORATION_COLOR}%} ❯%{%b%f%}"    # apple
  local USERHOST="%{%B%F{$USERHOST_COLOR}%}%n@%m%{%b%f%} %{%B%F{$DECORATION_COLOR}%}❯%{%b%f%}"
  local CWD="%{%B%F{$PATH_COLOR}%}%~%{%b%f%}"
  local PROMPT_CHAR="%{%B%F{$DECORATION_COLOR}%}%(!.#.$)%{%b%f%}"

  # "╭─ / ╰─" style bars
  local L1="%{%B%F{$DECORATION_COLOR}%}╭─%{%b%f%}"
  local L2="%{%B%F{$DECORATION_COLOR}%}╰─%{%b%f%}"

  # 2-line prompt, with $ (or # for root) on the 2nd line
  PROMPT="${L1} ${APPLE} ${USERHOST} ${CWD} \$(git_prompt_info)"$'\n'"${L2} ${PROMPT_CHAR} "
}

# Rebuilt before each prompt so it follows the system appearance live
autoload -Uz add-zsh-hook
add-zsh-hook precmd _apple_userhost_build_prompt

_apple_userhost_build_prompt
RPROMPT=""
