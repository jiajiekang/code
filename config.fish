if status is-interactive
    # Commands to run in interactive sessions can go here
end

# My Settings

alias ls='ls --color=auto'
alias dir='dir --color=auto'
alias vdir='vdir --color=auto'

alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

alias la='ls -A'
alias lt='ls -lt'
alias ll='ls -alF'
alias li='ls -ilF'
alias ld='ls -dl */'
alias lA='ls -ALF'
alias l.='ls -dlF .*'
alias l='ls -lF'

# My settings
alias sshlog='ssh jiajie.kang@logger-1.fixedandmobile.com'
alias psql="psql -P 'null=▢'"
alias clearh='history -c'
alias bash=/usr/bin/bash
alias vim=nvim

set -gx http_proxy 'http://127.0.0.1:7890/'
set -gx https_proxy $http_proxy
set -gx ftp_proxy $http_proxy
set -gx all_proxy 'socks://127.0.0.1:7890/'
set -gx PATH ~/bin:~/opt/node/bin:~/.plenv/bin:/Users/jjkang/.local/bin:$PATH

set -gx LANG en_US.UTF-8
set -gx LC_ALL en_US.UTF-8
set -gx PGUSER 'postgres'
set -gx PGPASSWORD '666666'
set -gx PGDATABASE 'postgres'

if type rg &> /dev/null
    set -gx FZF_DEFAULT_COMMAND 'rg --files'
    set -gx FZF_DEFAULT_OPTS '-m'
end

eval "$(plenv init -)"
