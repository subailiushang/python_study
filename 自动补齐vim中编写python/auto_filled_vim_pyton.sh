#!/bin/bash
#Author:zhangzihao
#QQ:1035127848


echo "此脚本用于在vim编辑器中自动补齐python"
uname -a
sleep 10

yum install wget unzip -y

wget https://github.com/rkulla/pydiction/archive/master.zip
unzip -q master
mv pydiction-master pydiction
mkdir -p ~/.vim/tools/pydiction
cp -r pydiction/after ~/.vim
cp pydiction/complete-dict ~/.vim/tools/pydiction

echo -e "filetype plugin on\nlet g:pydiction_location = '~/.vim/tools/pydiction/complete-dict'" > ~/.vimrc
