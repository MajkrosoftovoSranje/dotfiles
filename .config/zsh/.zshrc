# Enable colors and change prompt:
autoload -U colors && colors
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# History in cache directory:
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.cache/zsh/history
setopt append_history share_history histignorealldups
# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots) # Include hidden files.

# Keybinds
bindkey '^a' beginning-of-line
bindkey '^e' end-of-line

# vi mode
bindkey -v
export KEYTIMEOUT=1

# Use vim keys in tab complete menu:
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -v '^?' backward-delete-char

# Use lf to switch directories and bind it to ctrl-o
lfcd () {
    tmp="$(mktemp)"
    lf -last-dir-path="$tmp" "$@"
    if [ -f "$tmp" ]; then
        dir="$(cat "$tmp")"
        rm -f "$tmp"
        [ -d "$dir" ] && [ "$dir" != "$(pwd)" ] && cd "$dir"
    fi
}
bindkey -s '^o' 'lfcd\n'

# Load aliases.
source "$ZDOTDIR/aliasrc"

# Load lf icons
LF_ICONS="$(tr '\n' ':' <$HOME/.config/lf/icons)" && export LF_ICONS

# Load tmuxifier
eval "$(tmuxifier init -)"

# Load p10k
source $ZDOTDIR/p10k/powerlevel10k.zsh-theme
[[ ! -f ~/.config/zsh/.p10k.zsh ]] || source ~/.config/zsh/.p10k.zsh

# Load zsh-fzf-history-search
source $ZDOTDIR/plugins/zsh-fzf-history-search.zsh

# Load zsh-completions and zsh-autosuggestions
source $ZDOTDIR/plugins/zsh-autosuggestions.zsh

# Load zsh-syntax-highlighting; should be last.
source $ZDOTDIR/plugins/zsh-syntax-highlighting.zsh 2>/dev/null
