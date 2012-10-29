# Bash Finder 

Control the Finder from the Terminal  

### Features

Changing directory in the Terminal opens the same directory in the Finder  

Change the Finder window view from the Terminal (column, list, icon views)  

Case insensitve, tab for menu completion, shift tab to expand bash aliases 

Open a Terminal window to the current Finder window  

Works with the Mac OSX Terminal and iTerm2

## Install


1 - Download the git repo

2 - Change directory into the git repo

<pre>cd bashfinder</pre>

3 - Rename the files with a dot prefix and move to your home directory

<pre>
mv bash_profile ~/.bash_profile

mv bash_aliases ~/.bash_aliases

mv inputrc ~/.inputrc
</pre>

4 - Download and install Bash completion (Required)     
Download: [bash-completion](http://bash-completion.alioth.debian.org/ "bash-completion")

Change directory to the bash-completion directory  
Move ``bash_completion to /etc/bash_completion``, needs admin permissions  

<pre>cd bash-completion
sudo mv bash_completion /etc/bash_completion</pre>

5 - Download and install Git completion bash (Optional)  
Download: [git-completion.bash](https://raw.github.com/git/git/master/contrib/completion/git-completion.bash "git-completion.bash")

Move ``git-completion.bash to ~/.git-completion.bash``  

<pre>mv git-completion.bash ~/.git-completion.bash</pre>


6 - reload your .bash_profile, and then restart the Terminal  

<pre>source ~/.bash_profile</pre>  

## Commmands

Type cd and then a directory name   
eg: cd Desktop, will change the Finder window to the Desktop  

<pre>cd</pre>


cdff will change the terminal directory to current directory open in the Finder

<pre>cdff</pre>

Change the Finder window to column view

<pre>column</pre>

Change the Finder window to list view

<pre>list</pre>

Change the Finder window to icon view

<pre>icon</pre>

Press tab for menu completion 

<pre>tab</pre>

Expand bash aliases by pressing shift tab to show the aliased command, defined in .inputrc

<pre>shift tab</pre>

