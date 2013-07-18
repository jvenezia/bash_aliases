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
alias gac='git add . && git commit -am'
alias gc='gac'
alias gst='git status'
alias gtr='git log --graph --all --format=format:"%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(bold white)— %an%C(reset)%C(bold yellow)%d%C(reset)" --abbrev-commit --date=relative'
alias gbd='git branch -D'
alias gcb='git checkout -b'
alias glp='git log -p'
alias grh='git reset --hard'
alias grs='git reset --soft'
alias gpu='git push'

# Rails
alias be='bundle exec'

# Vim
alias vi='vim'

# Other
alias mkdir='mkdir -pv'
dg_with_param()
{
    dig -x $1 @224.0.0.251 -p 5353
}
alias dg=dg_with_param
