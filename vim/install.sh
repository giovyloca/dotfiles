mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

git clone https://github.com/morhetz/gruvbox.git ~/.vim/bundle/gruvbox
git clone https://github.com/bling/vim-airline.git ~/.vim/bundle/vim-airline
git clone https://github.com/ctrlpvim/ctrlp.vim.git ~/.vim/bundle/ctrlp
git clone https://github.com/tacahiroy/ctrlp-funky.git ~/.vim/bundle/ctrlp-funky
git clone https://github.com/fisadev/vim-ctrlp-cmdpalette.git ~/.vim/bundle/vim-ctrlp-cmdpalette
git clone https://github.com/tpope/vim-fugitive.git ~/.vim/bundle/vim-fugitive
git clone https://github.com/scrooloose/syntastic.git ~/.vim/bundle/syntastic
git clone git://github.com/tpope/vim-surround.git ~/.vim/bundle/vim-surround
git clone https://github.com/artur-shaik/vim-javacomplete2.git ~/.vim/bundle/vim-javacomplete2

apt-get install silversearcher-ag
git clone https://github.com/mileszs/ack.vim.git ~/.vim/bundle/ack.vim
