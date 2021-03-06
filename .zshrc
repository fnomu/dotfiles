
autoload colors
colors
PROMPT="%{${fg[yellow]}%}%d%{${reset_color}%} 
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
alias get_file_path_in_this_dir='find `pwd` -maxdepth 1'
alias INC='perl -e `foreach(@INC){print "$_\n";}`'
alias less='less -N'
alias vi ='/usr/local/bin/vim'
alias lo='ls -a -l | less -N'
alias pd='percol $HOME/dir.info | xargs open'
alias pco='percol $HOME/file.info | xargs open'
alias pcl='percol $HOME/file.info | xargs less'
alias pch='history | percol'
alias hpc='history | percol'
#alias listpm='find `perl -e 'print "@INC"'` -name "*.pm"' 
alias listpm='perl -e `print "@INC"`'
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
alias perldoc='perldoc5.12'
alias pld='perldoc5.12'
alias f="open ."
alias lsd="find ./ type -d"
alias lsa="ls -a"
alias g="grep"
# source ~/perl5/perlbrew/etc/bashrc
# setopt nolistbeep
# setopt list_packed
#zsh completion setting
autoload -Uz compinit
compinit -u
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}' 
zstyle ':completion::complete:*' use-cache true
zstyle ':completion:*' list-colors "${LS_COLORS}"

[[ -s `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh
#ベルをならさない
setopt no_beep 
#補完候補をつめて表示
setopt LIST_PACKED
#History
HISTFILE=~/.zsh_history
HISTSIZ=10000
SAVEHIST=10000

setopt hist_ignore_dups
setopt extended_history
setopt hist_verify
setopt hist_reduce_blanks
autoload history-search-end
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
# PYTHONPATH=/usr/local/lib/python2.7/site-packages:$PYTHONPATH
PYTHONPATH=/usr/local/lib/python2.7/site-packages
export PYTHONPATH

# added by Anaconda 1.8.0 installer
export PATH=/Users/nf2/anaconda/bin:$PATH

#added PATH to activate rbenv
export PATH=$HOME/.rbenv/bin:$PATH
export PATH=$HOME/.rbenv/shims:$PATH
eval "$(rbenv init -)"

#Go path
export GOPATH=$HOME/go
export GOROOT=/usr/local/opt/go/libexec
