NUL=/dev/null

# get current branch in git repo
git_stat() {
    BRANCH=$(git branch 2> $NUL | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/')
    if [ ! "$BRANCH" = "" ]; then
        STAT=$(parse_git_dirty)
        echo "[${BRANCH}${STAT}]"
    else
        echo ""
    fi
}

# get current status of git repo
RENAM="renamed:"
AHEAD="Your branch is ahead of"
NEWFI="new file:"
UNTRA="Untracked files"
DELET="deleted:"
DIRTY="modified"
check() { echo "$1" 2> $NUL | grep "$2" > $NUL 2>&1; echo "$?"; }
parse_git_dirty() {
    stat="$(git status)"
    bits=''
    [ "$(check "$stat" "$RENAM")" = "0" ] && bits=">$bits"
    [ "$(check "$stat" "$AHEAD")" = "0" ] && bits="*$bits"
    [ "$(check "$stat" "$NEWFI")" = "0" ] && bits="+$bits"
    [ "$(check "$stat" "$UNTRA")" = "0" ] && bits="?$bits"
    [ "$(check "$stat" "$DELET")" = "0" ] && bits="x$bits"
    [ "$(check "$stat" "$DIRTY")" = "0" ] && bits="!$bits"
    if [ ! "$bits" = "" ]; then
        echo " $bits"
    else
        echo ""
    fi
}
