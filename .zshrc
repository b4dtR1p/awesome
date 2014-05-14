ZSH=$HOME/.oh-my-zsh
ZSH_THEME="fino"
HIST_STAMPS="mm/dd/yyyy"
plugins=(git archlinux github vi-mode themes battery cp tmux)

source $ZSH/oh-my-zsh.sh
source $HOME/.zsh/alias.zsh
source $HOME/.zsh/setopt.zsh

export GDK_USE_XFT=1

export _JAVA_OPTIONS='-Dawt.useSystemAAFontSettings=on -Dswing.aatext=true -Dswing.defaultlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel'
export TERM=xterm
autoload -Uz compinit zcalc
compinit
zstyle -e ':completion:*:default' list-colors 'reply=("${PREFIX:+=(#bi)($PREFIX:t)(?)*==02=01}:${(s.:.)LS_COLORS}")'
zstyle ':completion:*' menu select
zstyle '*:processes-names' command 'ps -e -o comm='
zstyle ':completion:*:warnings' format '%BSorry, no matches for: %d%b'
zstyle ':completion:*' file-sort modification reverse


autoload -U colors && colors
zstyle ':completion:*' list-colors "=(#b) #([0-9]#)*=31=36"

insert_sudo () { zle beginning-of-line; zle -U "sudo " }
zle -N insert-sudo insert_sudo
bindkey "^[d" insert-sudo

export EDITOR=vim
bindkey "^[[1~" beginning-of-line
bindkey "^[[4~" end-of-line
bindkey "^[[3~" delete-char
bindkey "^[[5~" up-line-or-history
bindkey "^[[6~" down-line-or-history
echo "$fg[green]{{Il mondo gira alla rovescia!}}$reset_color"
echo "$fg[cyan]Last -Syu:$reset_color $(grep "pacman -Syu" /var/log/pacman.log | tail -n1 | cut -c 2- | cut -c-16)"
echo ""
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=200
## RUBY {{{
export PATH="`ruby -e 'puts Gem.user_dir'`/bin:$PATH"
#}}}
export PATH="/home/b4dtr1p/.gem/ruby/2.1.0/bin:/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/bin/core_perl"
# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"
