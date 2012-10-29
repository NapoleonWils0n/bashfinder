#|------------------------------------------------------------------------------
#|	Bash aliases
#|------------------------------------------------------------------------------

# Expand bash aliases by pressing shift tab to show the aliased command
# defined in .inputrc

#|------------------------------------------------------------------------------
#|	General Aliases
#|------------------------------------------------------------------------------

# wget - enable continue and set the user agent
alias wget='wget --user-agent="Mozilla" -c'

# edit ~/.bash_profile
alias edit='subl ~/.bash_profile'

# reload ~/.bash_profile
alias reload='source ~/.bash_profile'

# list with / for dir
alias ls='ls -F'

# mkdir check if dir exists
alias mkdir='mkdir -p'

# get external ip address
alias ipaddress='curl ifconfig.me'

# quicklook files
alias qlook='qlmanage -p'

# octal file permissions
alias octal='stat -f '%p''

#|------------------------------------------------------------------------------
#|	Git aliases
#|------------------------------------------------------------------------------

# git add
alias ga='git add'

# git commit
alias gc='git commit -a'

# git move
alias gm='git mv'

# git push origin master
alias gpom='git push origin master'

# git push ssh master
alias gpsm='git push ssh master'

# git remove
alias gr='git rm'

# git status
alias gs='git status'

