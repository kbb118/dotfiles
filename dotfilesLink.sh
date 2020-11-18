#!/bin/sh

# dry run
command="ln -s"
[ "$1" = "-d" ] && command="echo $command"

for f in $(\ls -a $(dirname $0)); do
    # 無視したいファイルやディレクトリはこんな風に追加してね
    [ "$f" = "." ] && continue
    [ "$f" = ".." ] && continue
    [ "$f" = ".git" ] && continue
    [ "$f" = ".gitignore" ] && continue
    [ "$f" = "$(basename $0)" ] && continue
    [ "$f" = "README.md" ] && continue
    echo "$f" | grep -q '.swp$' && continue

    if [ -e ~/$f ]; then
        echo File already exists!! ~/$f
    else
        $command $(pwd)/$f ~/$f
    fi
done

