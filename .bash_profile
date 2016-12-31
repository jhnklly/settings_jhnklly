export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

# jmk
# default PATH set elsewhere? /usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin
# export PATH="/usr/local/sbin:/usr/local/share/gdal"

# export PATH="$PATH:/Library/Frameworks/GDAL.framework/Versions/1.11/Programs:/usr/local/share/gdal"
export PATH="/usr/local/sbin:$PATH:/Library/Frameworks/GDAL.framework/Versions/1.11/Programs"

# export GDAL_DATA="/usr/local/share/gdal"
export GDAL_DATA="/Library/Frameworks/GDAL.framework/Versions/1.11/Resources/gdal"
# export GDAL_PLUGINS="/Library/Application Support/GDAL/1.11/PlugIns"

# For https://github.geo.apple.com/john-m-kelly/digest/blob/master/README.md and release-notes
export GITHUB_OAUTH2_TOKEN="5ae11530886b30883d54490871c98c9584cfd34e"

alias ls='ls -GFh'
# added by Anaconda 2.3.0 installer
# export PATH="/Users/johnkelly/anaconda/bin:$PATH:/usr/local/sbin:/usr/local/share/gdal"

# alias ogr2ogr='/usr/local/bin/ogr2ogr'

alias ogr2pg='ogr2ogr -f postgresql -progress --config PG_USE_COPY YES pg:"host=localhost dbname=mapple2 user=johnkelly" -update -append -skipfailures  -t_srs epsg:4326 -nlt PROMOTE_TO_MULTI '

alias start_pg='pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start'
alias stop_pg='pg_ctl -D /usr/local/var/postgres stop -s -m fast'

alias gac='git commit -am'
alias gb='git branch -vv'
alias gbs="git for-each-ref --sort=committerdate refs/heads/ --format='%(HEAD) %(color:blue)%(refname:short)%(color:reset) - %(color:yellow)%(objectname:short)%(color:reset) - %(contents:subject) - %(authorname) (%(color:green)%(committerdate:relative)%(color:reset))'"
alias gc='git clone'
alias gco='git checkout'
alias gcob='git checkout -b'
alias gconfig='git config -l --show-origin'
alias gd='git diff'
alias gfu='git fetch upstream'
alias gm='git merge'
alias gmu='git merge upstream/master master'
alias gpo='git push origin'
alias gs='git status'

alias gjhnklly='git config user.name "jhnklly"; git config user.email "jhnklly@gmail.com"; git config github.user "jhnklly"'
# not possible from cli: alias gpr='git pull request...'

# alias does not accept parameters but it can alias a function that does. For example:
# fgac() { mv "$1" "$1.bak"; cp "$2" "$1"; }
# alias gac=fgac

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

GIT_PS1_SHOWUPSTREAM="auto"
GIT_PS1_SHOWCOLORHINTS="yes"
source ~/.git-prompt.sh

export PROMPT_COMMAND='__git_ps1 "\u@\h:\W" "\\\$ ";'

GIT_PS1_SHOWDIRTYSTATE=true
export PS1='[\u@mbp \w$(__git_ps1)]\$ '
##
# Your previous /Users/johnkelly/.bash_profile file was backed up as /Users/johnkelly/.bash_profile.macports-saved_2016-08-18_at_11:24:02
##

# MacPorts Installer addition on 2016-08-18_at_11:24:02: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

# export EDITOR="/Applications/Sublime\ Text.app/Contents/MacOS/Sublime\ Text"
export HDBPASS="!!!"

