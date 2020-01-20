# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh
ZSH_THEME="robbyrussell"
plugins=(git docker tmux)

export PATH="/usr/lib64/qt-3.3/bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/sbin:/bin:/sbin:/home/chbatey/.local/bin:/home/chbatey/bin:/home/chbatey/.local/bin:/home/chbatey/bin"

source $ZSH/oh-my-zsh.sh
[ -s "$HOME/.scm_breeze/scm_breeze.sh" ] && source "$HOME/.scm_breeze/scm_breeze.sh"

export PATH=$PATH:/usr/local/bin
export PATH=$PATH:/snap/bin

# Golang
export PATH=$PATH:/usr/local/go/bin
export GOPATH=/home/chbatey/go/
export PATH=$PATH:$GOPATH/bin/

# Vim sttings
bindkey -v
export KEYTIMEOUT=40
bindkey -M viins 'jk' vi-cmd-mode

# Preserve shortcuts removed by using vim mode
bindkey '^P' up-history
bindkey '^N' down-history
bindkey '^A' beginning-of-line-hist
bindkey '^E' end-of-line-hist
bindkey '^?' backward-delete-char
bindkey '^h' backward-delete-char
bindkey '^w' backward-kill-word
bindkey '^r' history-incremental-search-backward

# NORMAL mode prompt for vim
function zle-line-init zle-keymap-select {
    VIM_PROMPT="%{$fg_bold[yellow]%} [% NORMAL]%  %{$reset_color%}"
    RPS1="${${KEYMAP/vicmd/$VIM_PROMPT}/(main|viins)/} $EPS1"
    zle reset-prompt
}

zle -N zle-line-init
zle -N zle-keymap-select
TIMEFMT=$'\nreal\t%E\nuser\t%U\nsys\t%S'
alias info="info --vi-keys"

# Linux brew
export PATH="$HOME/.linuxbrew/bin:$PATH"

# Java
export PATH=$PATH:~/dev/os/perf/perf-map-agent/bin/:~/dev/os/perf/async-profiler:~/apps/visualvm/bin/
export FLAMEGRAPH_DIR=~/dev/os/perf/FlameGraph/
export SBT_OPTS="-Xms512M -Xmx2048M -Xss2M -XX:MaxMetaspaceSize=1024M -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCI -XX:+UseJVMCICompiler"
# May need built / version updated
alias jsk="java -jar /home/chbatey/dev/os/perf/jvm-tools/sjk-plus/target/sjk-plus-0.11-SNAPSHOT.jar"

# java version manager
[ -s "/home/chbatey/.jabba/jabba.sh" ] && source "/home/chbatey/.jabba/jabba.sh" && jabba use adopt@~1.11.0-5

# OCaml
source /home/cirrus/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true

alias xclip="xclip -selection c"
PATH="/home/linuxbrew/.linuxbrew/bin:$PATH"
export PATH="/home/linuxbrew/.linuxbrew/opt/protobuf@2.5/bin:$PATH"

# Gatling
PATH="/opt/gatling/bin/:$PATH"


# added by travis gem
[ -f /home/chbatey/.travis/travis.sh ] && source /home/chbatey/.travis/travis.sh


# Kubernetes

export PATH=$PATH:~/apps/bin/
# if [ /home/chbatey/apps/bin/kubectl ]; then source <(kubectl completion zsh); fi

[ -f /usr/share/autojump/autojump.zsh ] && source /usr/share/autojump/autojump.zsh

[ -s "/home/chbatey/.scm_breeze/scm_breeze.sh" ] && source "/home/chbatey/.scm_breeze/scm_breeze.sh"

# Erlang
PATH=/home/chbatey/.cache/rebar3/bin:$PATH
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
