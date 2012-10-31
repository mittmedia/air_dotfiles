
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function

export PATH=/usr/local/pear/bin:$PATH:~/bin

# export EDITOR="/usr/local/bin/mate -w"

export PATH=/Applications/SenchaSDKTools-2.0.0-Beta:$PATH

export PATH=/Applications/SenchaSDKTools-2.0.0-Beta/bin:$PATH

export PATH=/Applications/SenchaSDKTools-2.0.0-Beta/jsbuilder:$PATH

export GREP_COLOR="1;32"  # green

# ALIASES
alias be='bundle exec'
alias feh='feh --image-bg black --scale-down'
alias grep='grep --color=auto'
#alias ls='ls --color=auto'
alias m_on='xrandr --output LVDS1 --auto --output DP2 --left-of LVDS1 --auto'
alias m_off='xrandr --output LVDS1 --auto --output DP2 --off'
alias t_off='xinput set-prop '\''SynPS/2 Synaptics TouchPad'\'' '\''Device Enabled'\'' 0'
alias t_on='xinput set-prop '\''SynPS/2 Synaptics TouchPad'\'' '\''Device Enabled'\'' 1'

# PROMPT
function parse_git_branch {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || return
  echo "("${ref#refs/heads/}") "
}

set_prompt_style () {
  local bldpur='\e[1;35m' # Purple
  local bldblu='\e[1;34m' # Blue
  local bldblk='\e[1;30m' # Black - Bold
  local bldred='\e[1;31m' # Red
  local txtrst='\e[0m'    # Text Reset
  local bashdir="\[$bldblk\][\[$bldred\]\W\[$bldblk\]]"
  local gitbranch="\[$bldblk\]\[$bldblu\]\$(parse_git_branch)\[$txtrst\]"
  PS1="$bashdir $gitbranch"
}
set_prompt_style

# COLORIZE LESS (INCL. MAN)
export LESS_TERMCAP_mb=$'\E[01;31m' # begin blinking
export LESS_TERMCAP_md=$'\E[01;38;5;74m' # begin bold
export LESS_TERMCAP_me=$'\E[0m' # end mode
export LESS_TERMCAP_se=$'\E[0m' # end standout-mode
export LESS_TERMCAP_so=$'\E[38;5;246m' # begin standout-mode - info box
export LESS_TERMCAP_ue=$'\E[0m' # end underline
export LESS_TERMCAP_us=$'\E[04;38;5;146m' # begin underline

# OTHER
# correct small typing mistakes of cd
shopt -s cdspell
# bash completion extended
set show-all-if-ambiguous on

# Fix mysql2 gem for osx
export DYLD_LIBRARY_PATH=/usr/local/zend/mysql/lib:$DYLD_LIBRARY_PATH
# Setting PATH for Python 3.2
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.2/bin:${PATH}"
export PATH
