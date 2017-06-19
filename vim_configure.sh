===================================================
#configure centos terminal
#use transparent backgroud
#white on black schemes

===================================================
#install vim
#build vim by yourself
#download and unzip the file
#you can also consult this tutorial https://github.com/Valloric/YouCompleteMe/wiki/Building-Vim-from-source

git clone https://github.com/vim/vim.git
cd vim
./configure --prefix=/opt/vim8.0 --enable-pythoninterp=OPTS --enable-python3interp=OPTS
make
sudo make install

===================================================
#add the /opt/vim8.0/bin/ into environmental path and set alisa vim=vim8.0
export PATH=$PATH:/opt/vim8.0/bin/
alias vim='/opt/vim8.0/bin/vim'

===================================================
#set up vim
#based on https://github.com/humiaozuzu/dot-vimrc
mkdir ~/.vim
mkdir ~/.vim/bundle

#download bundle.vim from https://github.com/humiaozuzu/dot-vimrc
git clone https://github.com/humiaozuzu/dot-vimrc.git
cp bundle.vim ~/.vim/bundle.vim
source ~/.vimrc

#sudo yum install  ack ctags
#Launch vim and run :PluginInstall
#or
vim +PluginInstall +qall

#set the vim theme
#download vim theme from https://github.com/tomasr/molokai
mkdir ~/.vim/colors
mv molokai.vim  ~/.vim/colors/.

#add the following at the end of ~/.vimrc
#edit line17 in ~/.vimrc and set "color molokai"
#add
let g:molokai_original = 1
let g:rehash256 = 1


#install pydiction
cd ~/.vim/bundle
git clone https://github.com/rkulla/pydiction.git
#add pydiction complete settings by mes
let g:pydiction_location='/Users/fwmeng/.vim/bundle'
let g:pydiction_menu_height = 5

#install vim-better-whitespacefor tailing white space automatically
#other-wise, refer https://github.com/ntpeters/vim-better-whitespace
#add
Plugin 'ntpeters/vim-better-whitespace'

#install syntastic
#Syntastic is a syntax checking plugin for Vim created by Martin Grenfell.
#It runs files through external syntax checkers and displays any resulting errors to the user.
#it should be installed already
#if not, go to http://astraylinux.com/2014/03/05/vim-syntastic-and-pylint/ for help.
#git clone https://github.com/vim-syntastic/syntastic.git

#add this into ~/.vimrc
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

#This also might interesting to you https://realpython.com/blog/python/vim-and-python-a-match-made-in-heaven\

#install LaTeX-Suite (also known as Vim-LaTeX) to support rich latex features
#for more details refer to https://github.com/vim-latex/vim-latex
#add the following into ~/.vimrc
Plugin 'vim-latex/vim-latex'
#add this to ~/.vimrc
let g:tex_flavor='latex'
filetype indent on
#run these commands inside vim
:source %
:PluginInstall

#tex file indent
let g:tex_indent_items=0
#Autopep8
Plugin 'tell-k/vim-autopep8'
#add it to ~/.vimrc
let g:autopep8_diff_type='vertical'

#matchit plugin"
Plugin 'tmhedberg/matchit'

#sepll check
setlocal spell spelllang=en_us

#timestamp
#https://github.com/vim-scripts/timestamp.vim
#copy the timestamp.vim into /Users/fwmeng/.vim/bundle
