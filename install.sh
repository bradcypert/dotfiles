#!/bin/bash

# ln -sf $(pwd)/vim/.vim ~/.vim
# ln -sf $(pwd)/vim/.vimrc ~/.vimrc

cp ./.vimrc ~/.vimrc

mkdir -p ~/.vim/pack/vendor/start
mkdir -p ~/.vim/pack/plugins/start
mkdir -p ~/.vim/pack/default/start/gruvbox
mkdir -p ~/.vim/colors/miramare.vim

rm -rf ~/.vim/pack/vendor/start/nerdtree
git clone https://github.com/preservim/nerdtree.git ~/.vim/pack/vendor/start/nerdtree
vim -u NONE -c "helptags ~/.vim/pack/vendor/start/nerdtree/doc" -c q

rm -rf ~/.vim/pack/vendor/start/vim-test
git clone --depth 1 \
  https://github.com/vim-test/vim-test.git \
  ~/.vim/pack/vendor/start/vim-test

rm -rf ~/.vim/pack/vendor/start/vim-flutter
git clone --depth 1 \
  https://github.com/thosakwe/vim-flutter.git \
  ~/.vim/pack/vendor/start/vim-flutter

rm -rf ~/.vim/pack/vendor/start/dart-vim-plugin
git clone --depth 1 \
  https://github.com/dart-lang/dart-vim-plugin.git \
  ~/.vim/pack/vendor/start/dart-vim-plugin

rm -rf ~/.vim/pack/plugins/start/rust.vim
git clone https://github.com/rust-lang/rust.vim ~/.vim/pack/plugins/start/rust.vim

rm -rf ~/.vim/pack/default/start/gruvbox
git clone https://github.com/morhetz/gruvbox.git ~/.vim/pack/default/start/gruvbox

mkdir -p ~/.vim/pack/plugins/start
git clone https://github.com/franbach/miramare.git ~/.vim/pack/plugins/start/miramare

# rm -rf ~/.vim/colors/miramare.vim
# git clone https://github.com/franbach/miramare.git ~/.vim/colors/miramare.vim

rm -rf ~/.vim/pack/vendor/start/coc
git clone --branch release https://github.com/neoclide/coc.nvim.git --depth=1 \
  ~/.vim/pack/vendor/start/coc

rm -rf ~/.vim/pack/tpope/start
mkdir -p ~/.vim/pack/tpope/start
cd ~/.vim/pack/tpope/start
git clone https://tpope.io/vim/surround.git
vim -u NONE -c "helptags surround/doc" -c q