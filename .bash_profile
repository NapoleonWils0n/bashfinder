#|------------------------------------------------------------------------------
#|	Bash Profile
#|------------------------------------------------------------------------------

# Control the Finder from the Terminal
# https://github.com/NapoleonWils0n/bashfinder

#|------------------------------------------------------------------------------
#|	PATH
#|------------------------------------------------------------------------------

export PATH=/usr/local/bin:/usr/local/sbin:/Users/$USER/bin:/usr/local/mysql/bin:$PATH

# path set for mysql
# path set for ~/bin directory 

#|------------------------------------------------------------------------------
#|	CDPATH
#|------------------------------------------------------------------------------

CDPATH=".:~"

# . = current directory
# : = seperator
# ~ = home directory

# To add Dropbox to your CDPATH
# CDPATH=".:~:~/Dropbox"

# Seperate paths with a colon :

#|------------------------------------------------------------------------------
#|	Bash completion 
#|------------------------------------------------------------------------------

# Download: http://bash-completion.alioth.debian.org/
# Move bash_completion to /etc/bash_completion 
#
if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
fi

# load function files from bash_completion.d
if [ -d /etc/bash_completion.d ]; then
    . /etc/bash_completion.d/*
fi

#|------------------------------------------------------------------------------
#|	Git completion 
#|------------------------------------------------------------------------------

# Download: https://raw.github.com/git/git/master/contrib/completion/git-completion.bash
# Move git-completion.bash to ~/.git-completion.bash
#
if [ -f ~/.git-completion.bash ]; then
   . ~/.git-completion.bash
fi

# git bash prompt
if [ -f ~/.git-prompt.sh ]; then
   . ~/.git-prompt.sh
fi

#|------------------------------------------------------------------------------
#|	Bash aliases 
#|------------------------------------------------------------------------------

# shift tab will expand bash aliases to show the aliased command, defined in .inputrc
#
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

#|------------------------------------------------------------------------------
#|	Prompt
#|------------------------------------------------------------------------------

# Shell prompt
GIT_PS1_SHOWDIRTYSTATE=true
GIT_PS1_SHOWUNTRACKEDFILES=true
GIT_PS1_SHOWUPSTREAM="auto verbose git"
export PS1='\[\e[0;31m\]\u@\h:\[\e[m\]\[\e[1;34m\]\w\[\e[m\]\[\e[1;32m\]\[\e[m\]\[\e[0;33m\]$(__git_ps1 " (%s)")\[\e[m\]\[\e[0;37m\]\n➔ \[\e[m\]'


#|------------------------------------------------------------------------------
#| Colour
#|------------------------------------------------------------------------------

# Tell ls to be colourful
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

# Tell grep to highlight matches
export GREP_OPTIONS='--color=auto'

#|------------------------------------------------------------------------------
#|	Check OSTYPE is Mac osx, and only then include code to control the Finder
#|------------------------------------------------------------------------------

if [[ "$OSTYPE" =~ ^darwin ]]; then
	    . ~/.bash_macosx
	    . /etc/bash_completion.d/*
fi