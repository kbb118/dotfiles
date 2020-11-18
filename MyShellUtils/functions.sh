#!/bin/sh

# ghq + fzf
fhq() {
    dir=$(ghq list | fzf --height 40%)
    # ghq root が複数欲しくなったら ghq list --full-path にするといい
    if [ -n "$dir" ]; then
        cd "$(ghq root)/$dir" || return
    fi
}
