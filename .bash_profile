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

#|------------------------------------------------------------------------------
#|	Git completion 
#|------------------------------------------------------------------------------

# Download: https://raw.github.com/git/git/master/contrib/completion/git-completion.bash
# Move git-completion.bash to ~/.git-completion.bash
#
if [ -f ~/.git-completion.bash ]; then
   . ~/.git-completion.bash
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
export PS1='\[\e[0;31m\]\u@\h:\[\e[m\]\[\e[1;34m\]\w\[\e[m\] \[\e[1;32m\]\$ \[\e[m\]'


#|------------------------------------------------------------------------------
#| Colour
#|------------------------------------------------------------------------------

# Tell ls to be colourful
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

# Tell grep to highlight matches
export GREP_OPTIONS='--color=auto'

#|------------------------------------------------------------------------------
#| Default editor
#|------------------------------------------------------------------------------

# uncomment below to set Sublime Text 2 as the default editor
# export EDITOR="/usr/local/bin/sb -w"

#|------------------------------------------------------------------------------
#|	bashfinder - control the finder with the terminal
#|------------------------------------------------------------------------------

function ee { 
 osascript -e 'set cwd to do shell script "pwd"'\
 -e 'tell application "Finder"'\
 -e "if (${1-1} <= (count Finder windows)) then"\
 -e "set the target of window ${1-1} to (POSIX file cwd) as string"\
 -e 'else' -e "open (POSIX file cwd) as string"\
 -e 'end if' -e 'end tell';\
};\

# Check if a directory is passed to cd, eg: $ cd Desktop
# if no directory is specified typing cd changes dir to ~

function cdee() { if [ -z "$1" ]
then
cd ~; ee > /dev/null;
else
cd "$1"; ee > /dev/null;
fi
};
alias cd='cdee'

#|------------------------------------------------------------------------------
#|	List view
#|------------------------------------------------------------------------------

# typing list at the prompt will change the current Finder window to list view

function list { 
 osascript -e 'set cwd to do shell script "pwd"'\
 -e 'tell application "Finder"'\
 -e "if (${1-1} <= (count Finder windows)) then"\
 -e "set the target of window ${1-1} to (POSIX file cwd) as string"\
 -e "set the current view of the front Finder window to list view"\
 -e 'else' -e "open (POSIX file cwd) as string"\
 -e "set the current view of the front Finder window to list view"\
 -e 'end if' -e 'end tell';\
};\

#|------------------------------------------------------------------------------
#|	Icon view
#|------------------------------------------------------------------------------

# typing icon at the prompt will change the current Finder window to icon view

function icon { 
 osascript -e 'set cwd to do shell script "pwd"'\
 -e 'tell application "Finder"'\
 -e "if (${1-1} <= (count Finder windows)) then"\
 -e "set the target of window ${1-1} to (POSIX file cwd) as string"\
 -e "set the current view of the front Finder window to icon view"\
 -e 'else' -e "open (POSIX file cwd) as string"\
 -e "set the current view of the front Finder window to icon view"\
 -e 'end if' -e 'end tell';\
};\

#|------------------------------------------------------------------------------
#|	Column view
#|------------------------------------------------------------------------------

# typing column at the prompt will change the current Finder window to column view

function column { 
 osascript -e 'set cwd to do shell script "pwd"'\
 -e 'tell application "Finder"'\
 -e "if (${1-1} <= (count Finder windows)) then"\
 -e "set the target of window ${1-1} to (POSIX file cwd) as string"\
 -e "set the current view of the front Finder window to column view"\
 -e 'else' -e "open (POSIX file cwd) as string"\
 -e "set the current view of the front Finder window to column view"\
 -e 'end if' -e 'end tell';\
};\

#|------------------------------------------------------------------------------
#|	Change terminal directory to current directory open in the Finder
#|------------------------------------------------------------------------------

# cdff will change the terminal directory to current directory open in the Finder

function ff { osascript -e 'tell application "Finder"'\
 -e "if (${1-1} <= (count Finder windows)) then"\
 -e "get POSIX path of (target of window ${1-1} as alias)"\
 -e 'else' -e 'get POSIX path of (desktop as alias)'\
 -e 'end if' -e 'end tell'; };\

function cdff { cd "`ff $@`"; };