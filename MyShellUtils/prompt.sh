blk() { echo "\[\e[30m\]$@\[\e[m\]"; }
red() { echo "\[\e[31m\]$@\[\e[m\]"; }
gre() { echo "\[\e[32m\]$@\[\e[m\]"; }
yel() { echo "\[\e[33m\]$@\[\e[m\]"; }
blu() { echo "\[\e[34m\]$@\[\e[m\]"; }
pur() { echo "\[\e[35m\]$@\[\e[m\]"; }
cya() { echo "\[\e[36m\]$@\[\e[m\]"; }
whi() { echo "\[\e[37m\]$@\[\e[m\]"; }
bk_blk() { echo "\[\e[40m\]$@\[\e[m\]"; }
bk_red() { echo "\[\e[41m\]$@\[\e[m\]"; }
bk_gre() { echo "\[\e[42m\]$@\[\e[m\]"; }
bk_yel() { echo "\[\e[43m\]$@\[\e[m\]"; }
bk_blu() { echo "\[\e[44m\]$@\[\e[m\]"; }
bk_pur() { echo "\[\e[45m\]$@\[\e[m\]"; }
bk_cya() { echo "\[\e[46m\]$@\[\e[m\]"; }
bk_whi() { echo "\[\e[47m\]$@\[\e[m\]"; }

retval() {
  RETVAL=$?
  [ $RETVAL -ne 0 ] && echo "$(bk_red $RETVAL)"
}

source ~/MyShellUtils/git_prompt.sh

NAM=\\u
HOS=\\h
CWD=\\w
LF=\\n
DOL=\\$
_set_prompt() {
    export PS1="$(retval)$(gre $NAM@$HOS) $(git_stat) $(yel $CWD)$LF$DOL "
}
PROMPT_COMMAND=_set_prompt

