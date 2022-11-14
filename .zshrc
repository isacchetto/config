echo ".zshrc execution starts.."

# Change prompt:
export PS1='%B%F{1}%n:%f%F{3}%~%f%b %# ' #MonokaiPro
    # %(?.%F{green}√.%F{red}?%?)%f 
#export PS1='%B%F{51}%n:%f%F{35}%~%f%b %# ' #Dracula
    # %B%F{51}%n%f%b
    # %F{35}%~%f

#export PS2='> '

# Enable colors:
export CLICOLOR=1
#autoload -U colors && colors  #don't work
export LSCOLORS=fxexgxgxcxegegacacafaf #MonokaiPro
    #export LSCOLORS= ex fx cx dx bx eg ed ab ag ac ad
    # 1.   directory
    # 2.   symbolic link
    # 3.   socketq
    # 4.   pipe
    # 5.   executable
    # 6.   block special
    # 7.   character special
    # 8.   executable with setuid bit set
    # 9.   executable with setgid bit set
    # 10.   directory writable to others, with sticky bit
    # 11.   directory writable to others, without sticky


# Custom Variables:
EDITOR=emacs

# History in zsh directory:
HISTSIZE=10000                      #How many lines of history to keep in memory
SAVEHIST=10000                      #Number of history entries to save to disk
HISTFILE=${ZDOTDIR}/.zsh_history    #Where to save history to disk
setopt append_history               #Append history to the history file (no overwriting)
setopt inc_append_history           #Immediately append to the history file, not just when a term is killed
setopt share_history                #Share history across terminals
#setopt HIST_FIND_NO_DUPS            #not work :(
setopt HIST_IGNORE_ALL_DUPS         #Not save duplicate in history

# Basic auto/tab complete:
# autoload -U compinit
# zstyle ':completion:*' list-colors 'fxexgxgxcxegegacacafaf' ignored-patterns 'blockdev' menu select
# zmodload zsh/complist
# compinit
# _comp_options+=(globdots)               # Include hidden files.

# Load aliases and shortcuts if existent.
[ -f "${ZDOTDIR}/.aliasrc" ] && source "${ZDOTDIR}/.aliasrc"

# Load ; should be last.
source "/usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh" 2>/dev/null
source "~/git/zsh-autocomplete/zsh-autocomplete.plugin.zsh" 2>/dev/null
#ZSH_AUTOSUGGEST_STRATEGY=(completion history)
source "/usr/local/opt/zsh-fast-syntax-highlighting/share/zsh-fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh"
source "/usr/local/opt/spaceship/spaceship.zsh"

echo ".zshrc execution stops.."