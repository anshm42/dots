# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export VISUAL=nvim
export EDITOR="$VISUAL"
export PATH=$PATH:$HOME/.local/bin
export BROWSER=firefox
SAVEHIST=10000
HISTFILE=~/.zsh_history

setopt HIST_SAVE_NO_DUPS
setopt appendhistory
unsetopt BEEP
setopt prompt_subst

autoload -U compinit; compinit
zstyle ':completion:*' menu select

bindkey -e
bindkey  "^[[H"   beginning-of-line
bindkey  "^[[F"   end-of-line
bindkey  "^[[3~"  delete-char

bindkey '\e[A' history-search-backward
bindkey '\e[B' history-search-forward


_comp_options+=(globdots)

ZLE_RPROMPT_INDENT=0

#autoload -Uz vcs_info
#precmd() { vcs_info }

#zstyle ':vcs_info:*' stagedstr '%F{2}●'
#zstyle ':vcs_info:*' unstagedstr '%F{3}●'
#zstyle ':vcs_info:*' check-for-changes true
#zstyle ':vcs_info:(sv[nk]|bzr):*' branchformat '%b%F{1}:%F{11}%r'
#zstyle ':vcs_info:*' enable git svn cvs darcs hg
#zstyle ':vcs_info:*' disable bzr
#zstyle ':vcs_info:git:*' formats '[%b]'

#zstyle ':vcs_info:*' check-for-changes true
#zstyle ':vcs_info:*' unstagedstr '*'
#zstyle ':vcs_info:*' stagedstr '+'
#zstyle ':vcs_info:git:*' formats       '[%b%u%c]'
#zstyle ':vcs_info:git:*' actionformats '[%b|%a%u%c]'

#PROMPT='%~ %F{4}>%f '
#RPROMPT='${vcs_info_msg_0_}'

alias ls="ls --color=always"
alias l="ls -CF"
alias ll="ls -AlF"
alias la="ls -A"
alias v="$EDITOR"
alias g="git"
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
source ~/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
