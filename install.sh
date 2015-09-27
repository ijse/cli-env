cwd=`pwd`
ln -s ${cwd}/.vimrc ~/.vimrc
ln -s ${cwd}/.zshrc ~/.zshrc

sudo npm install instant-markdown-d -g --verbose

echo done!
