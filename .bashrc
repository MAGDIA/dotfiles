#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# command completion
source /usr/share/git/completion/git-completion.bash
source /home/wolf/.git-prompt.sh
# prompt
GIT_PS1_SHOWDIRTYSTATE=1
GIT_PS1_SHOWSTASHSTATE=1
GIT_PS1_SHOWUNTRACKEDFILES=1
GIT_PS1_SHOWUPSTREAM="auto"
color_off='\e[0m' # Text Reset
black='\e[0;30m' # Black
red='\e[0;31m' # Red
green='\e[0;32m' # Green
yellow='\e[0;33m' # Yellow
blue='\e[0;34m' # Blue
purple='\e[0;35m' # Purple
cyan='\e[0;36m' # Cyan
white='\e[0;37m' # White
PS1="\[${cyan}\]\u\[${blue}\]@\[${purple}\]\h 
\[${yellow}\]\w\[${red}\]\$(__git_ps1)\n\[${green}\]$ \[${color_off}\]"

# colouring core utils
export GREP_COLOR="1;31"
alias ll="ls++ --potsf -a"
alias grep='grep --color=auto'
alias q='exit'
export LESS="-R"
alias ls='ls -hF --color=auto'
eval $(dircolors -b /home/wolf/.config/dir_colours)

# aliases
alias tm="tmux attach-session -d -t 0"

# extract function
extract() {
  if [[ -f $1 ]]; then
    case $1 in
      *.7z) 7z x $1;;
      *.bz2) bunzip2 $1;;
      *.gz) gunzip $1;;
      *.rar) unrar x $1;;
      *.tar) tar xvf $1;;
      *.tar.bz2) tar xvjf $1;;
      *.tar.gz) tar xvzf $1;;
      *.tbz2) tar xvjf $1;;
      *.tgz) tar xvzf $1;;
      *.zip) unzip $1;;
      *.Z) uncompress $1;;
      *) echo "unable to extract '$1'..." ;;
    esac
  else
    echo "'$1' is not a valid file!"
  fi
}

# glut compile function
c() {
  if [[ -f $1 && $1 = *.cpp ]]; then
    g++ -lGL -lGLU -lglut $1 -o ${1%.*}
  else
    echo "'$1' is not a valid file!"
  fi
}
