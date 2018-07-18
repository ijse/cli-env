cwd=`pwd`

ln -s ${cwd}/.vimrc ~/.vimrc
ln -s ${cwd}/.zshrc ~/.zshrc
ln -s ${cwd}/.tmux.conf ~/.tmux.conf

# install vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# install plugins
vim +PluginInstall +qa

# add snippets
snippetsDir="${HOME}/.vim/bundle/snipMate/snippets"
rm $snippetsDir/_.snippets
rm $snippetsDir/jsx.snippets
ln -s ${cwd}/snippets/_.snippets $snippetsDir/_.snippets
ln -s ${cwd}/snippets/jsx.snippets $snippetsDir/jsx.snippets
ln -s ${cwd}/snippets/vue.snippets $snippetsDir/vue.snippets

# node and npm
n -V || curl -L https://git.io/n-install | bash
n -V && n stable

cd "${HOME}/.vim/bundle/tern_for_vim/"
npm install

npm install instant-markdown-d -g --verbose

brew install cmake
npm install -g typescript
cd "${HOME}/.vim/bundle/YouCompleteMe"
./install.py --js-completer

echo done!
