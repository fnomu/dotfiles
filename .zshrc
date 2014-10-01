autoload colors
colors
PROMPT="%{${fg[yellow]}%}%d%{${reset_color}%} (%D %*)
[%n]$ "

PROMPT2='[%n]> '
#export PATH='/usr/local/bin:$PATH'
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Users/nf2/Downloads/adt-bundle-mac-x86_64-20130522/sdk/platform-tools"
#export PATH='/usr/local/bin:$PATH'
#export PATH='/usr/local/sbin:$PATH'
alias pc='percol --auto-fail --auto-match'
alias l='ls -a -l'
alias o='less'
alias h='history'
alias c='clear'
alias p='pwd'
alias INC=`perl -e 'foreach(@INC){print "$_\n";}'`
alias less='less -N'
alias vi ='/usr/local/bin/vim'
alias lo='ls -a -l | less -N'
#alias listpm='find `perl -e 'print "@INC"'` -name "*.pm"' 
alias listpm=`perl -e 'print "@INC"'`
alias rm='rm -r'
alias s='sudo'
alias ..='cd ../'
alias ...='cd ../../'
alias ....='cd ../../../'
# alias refresh='source .bash_profile'
alias refresh='source ~/.zshrc'
alias srm='srm -s'
alias e='exit'
alias mpeg='open -a MPEC Streamclip'
alias plc='perl -c'
alias pl='perl'
alias f="open ."
alias lsd="find ./ type -d"
alias lsa="ls -a"
alias g="grep"
source ~/perl5/perlbrew/etc/bashrc
setopt nolistbeep
setopt list_packed

[[ -s `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh
#zsh completion setting
autoload -Uz compinit
compinit -u
# zstyle ':completion:*' menu select interactive
# setopt menu_complete
# bindkey -M menuselect '^a' accept-and-infer-next-history
#git command PATH
export PATH=/usr/local/git/bin:$PATH


eval  "$(gdircolors ~/.dircolors-solarized)"
alias ls='gls --color=auto'
##
# Your previous /Users/nf2/.bash_profile file was backed up as /Users/nf2/.bash_profile.macports-saved_2013-10-07_at_02:40:07
##

# MacPorts Installer addition on 2013-10-07_at_02:40:07: adding an appropriate PATH variable for use with MacPorts.
# Finished adapting your PATH environment variable for use with MacPorts.

#Add Search Module Path for Python 
PYTHOMPATH=/usr/local/lib/python2.7/site-packages:$PYTHOMPATH
export PYTHOMPATH

# added by Anaconda 1.8.0 installer
export PATH=/Users/nf2/anaconda/bin:$PATH

#added PATH to activate rbenv
export PATH=$HOME/.rbenv/bin:$PATH
export PATH=$HOME/.rbenv/shims:$PATH
eval "$(rbenv init -)"

#Go path
export GOPATH=$HOME/go
export GOROOT=/usr/local/opt/go/libexec
