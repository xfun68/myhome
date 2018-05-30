alias lol='open ~/.lolcommits'
alias mute='osascript -e "set Volume 0"'

alias ls='ls -FG'
alias ll='ls -lFG'
alias la='ls -AFG'
alias l='ls -hlFG'

alias rm='rm -i' # DON'T USE rm -rf ALWAYS, BE CAREFUL
alias rdf='rm -rf'

alias up='cd ..'
alias up2='cd ../..'
alias up3='cd ../../..'
alias up4='cd ../../../..'
alias up5='cd ../../../../..'
alias up6='cd ../../../../../..'
alias up7='cd ../../../../../../..'
alias up8='cd ../../../../../../../..'
alias up9='cd ../../../../../../../../..'
alias back='cd -'
alias recd='up && back'

# shortcuts for entering specific project dir
alias tmp='cd ~/tmp/'
alias code='cd ~/code'
alias codejam='cd ~/code/codejam'

alias blog='cd ~/code/blog/source/_posts'

alias twtb='cd ~/code/twtb'

alias hi=' history | less +G'

alias vimrc='vim ~/.vimrc'

alias grep='grep -a --color=auto'

alias psa='ps aux'

psg() {
  ps aux | egrep $@
}

alias k9='kill -9'

alias trake='time rake'
alias bi='bundle install'
alias bu='bundle update'
alias bl='bundle list'
alias be='bundle exec'
alias tbe='time bundle exec'
br() {
  be rspec --format documentation --color --profile $*
}
alias bs='be spinach'
alias spinach='bs'
alias cuke='be cucumber '
alias cucumber='cuke'
alias brails='be rails'

alias sll='svn log | less'

alias reset-cisco='sudo SystemStarter restart CiscoVPN'
alias restart-cisco='reset-cisco'

alias spec='be spec --format documentation --color --profile'

alias g='git'
# Autocomplete for 'g' as well
complete -o default -o nospace -F _git g

alias ap='ansible-playbook'

alias gw='./gradlew'
alias gq='gr -q'

alias h='http'

alias sqlplus='rlwrap sqlplus'

alias git-manual-page='open http://schacon.github.com/git/git.html'
alias cheatsheet-git='open http://cheat.errtheblog.com/s/git'
alias cheatsheet-resqueue='open http://whatcodecraves.com/articles/2010/06/22/resque_cheatsheet/index.html'

alias httpstatus='open http://www.w3.org/Protocols/rfc2616/rfc2616-sec10.html'
alias httpcode='httpstatus'

alias Downloads='cd ~/Downloads/'

alias resource='source ~/.bashrc'

alias json_prettify='python -mjson.tool 2>/dev/null'

function json_prettify_it() {
    filename=${1:?Target file is required!}
    filename_orig=${filename}.original
    filename_prettified=${filename}.prettified

    cp ${filename} ${filename_orig}

    cat $filename | json_prettify > ${filename_prettified}

    mv ${filename_prettified} ${filename}
}

alias json-prettify-it='json_prettify_it'

alias t='tree'

alias refresh_dns='sudo killall -HUP mDNSResponder'

alias please='sudo'
alias wtf='tail -f /var/log/{dmesg,messages,*{,/*}{log,err}}'

cmk() {
  mkdir "$*" && cd "$*"
}

#########################################################
## Configuration for git-run (aka gr)
#########################################################
alias grs="gr status"
alias grl="gr git --no-pager log --decorate --graph --oneline -n 5"

alias v='vagrant'
complete -o default -o nospace -F _vagrant v

alias d='docker'
complete -o default -o nospace -F _docker d

alias c='docker-compose'
complete -o default -o nospace -F _docker_compose c

