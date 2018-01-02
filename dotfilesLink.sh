#!/bin/bash -eu

for f in .??*
    do
    # 無視したいファイルやディレクトリはこんな風に追加してね
    [[ ${f} = ".git" ]] && continue
    [[ ${f} = ".gitignore" ]] && continue
    ln -snfv ${HOME}/dotfiles/${f} ${HOME}/${f}
done
echo $(tput setaf 2)Deploy dotfiles complete!. ✔︎$(tput sgr0)

git add .
git commit -m "committed automaticaly"
git push origin master
