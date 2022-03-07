#!/bin/zsh
alias gs="git status"
alias gb="git branch"
alias gl="git log"
alias gg="git grep"

# Simplify the left prompt.
PROMPT='%B%F{cyan}%1~%f%b %F{white}>%f '

# Add git branch to the right side of the prompt.
autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
RPROMPT=\$vcs_info_msg_0_
zstyle ':vcs_info:git*' formats '%F{white}(%b)%f'
zstyle ':vcs_info:*' enable git

# End with a newline.
