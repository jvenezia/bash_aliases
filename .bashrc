# Make some possibly destructive commands more interactive.
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

# Add some easy shortcuts for formatted directory listings and
color_option=''
unamestr=`uname`
if [ $unamestr == "Linux" ]; then
    color_option='--color=auto'
elif [ $unamestr == "Darwin" ]; then
    color_option='-G'
fi

alias df='df -h'
alias ll="ls -larthF $color_option"
alias ls="ls -aF $color_option"

# Grep
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# Git
alias gc='git add . && git commit -am'

# Rails
alias be='bundle exec'

# Vim
alias vi='vim'

# Other
alias mkdir='mkdir -pv'
