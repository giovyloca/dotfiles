mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

git clone https://github.com/morhetz/gruvbox.git
git clone https://github.com/bling/vim-airline.git
git clone https://github.com/ctrlpvim/ctrlp.vim.git
git clone https://github.com/tacahiroy/ctrlp-funky.git
git clone https://github.com/fisadev/vim-ctrlp-cmdpalette.git
git clone https://github.com/tpope/vim-fugitive.git
git clone https://github.com/scrooloose/syntastic.git
git clone git://github.com/tpope/vim-surround.git
git clone https://github.com/artur-shaik/vim-javacomplete2.git

sudo apt-get install silversearcher-ag
git clone https://github.com/mileszs/ack.vim.git ~/.vim/bundle/ack.vim
