#!/usr/bin/env zsh

autoload -Uz add-zsh-hook vcs_info

add-zsh-hook precmd vcs_info

zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:git*' formats '󰘬 %b%F{yellow}%u%f%F{green}%c%f'
zstyle ':vcs_info:git*' actionformats '%F{14}⏱ %*%f'
zstyle ':vcs_info:git*' stagedstr ' '
zstyle ':vcs_info:git*' unstagedstr ' '
zstyle ':vcs_info:*:*' check-for-changes true

PROMPT='%B %(?.%F{green}.%F{red})%f %F{cyan}%1~%f %b'
RPROMPT='%F{8}$vcs_info_msg_0_%f'

# Remove icons if running in a tty.
if [[ "$(tty)" =~ "/dev/tty*" ]]; then
    zstyle ':vcs_info:git*' actionformats '%F{14}@ %*%f'
    zstyle ':vcs_info:git*' formats 'git %b%F{yellow}%u%f%F{green}%c%f'
    zstyle ':vcs_info:git*' stagedstr ' +'
    zstyle ':vcs_info:git*' unstagedstr ' *'
    PROMPT='%B %(?.%F{green}OK.%F{red}ERR)%f %F{cyan}%1~%f %b'
fi
