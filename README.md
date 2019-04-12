## About this repo
This repo is a individual repo for quickly building code env.

## Relative
- zsh
- tmux
- vim

## How to setup vim env
```
mkdir -p ~/.vim
mkdir -p ~/.vim/colors
cp dotfiles/vim/colors/* ~/.vim/colors
mkdir -p ~/.vim/files/backup
mkdir -p ~/.vim/files/swap
mkdir -p ~/.vim/files/undo
mkdir -p ~/.vim/files/info
ln -s xxxx/ray.vim ~/.vimrc
```
If you want to use ctags and gtags, you need to uncomment the code about that after compliing and installing that by yourself.   
By default dotfile use neocomplete, you need use vim with lua to make it work.If you want to enable ycm , after uncomment that part, you need to Run PluginInstall in vim commandline and complie ycm by youself.   
If you want to enable ale for python, you need pip install flake8 or pylint firstly.     
### vim keymaps
```
prefix :still ctrl+w  
<F3> : open nerdtree window  
<F5> : auto run code  
<F6> : Autoformat  
<F10> : open quickfix window  
ALT+SHIFT+hjkl : switch windows  
ALT+h/l : fastly move during words  
ALT+y : delete to the tail of this row   
ALT + number ：switch buffer  
zc : fold code  
zo : open fold  

# about comment
gcc     comment current line（normal model）
gc      when in visual model, comment the area you selected
gcu     undo last one comment,include one and more
gcgc    undo comment of current line and the two close lines

" about snippet  
ALT + e : UltiSnipsExpandTrigger  
ALT + p : UltiSnipsJumpForwardTrigger  
ALT + n : UltiSnipsJumpBackwardTrigger  
ALT + m : UltiSnipsListSnippets  

" filesearch  
:LeaderfFunction  = search function  
" use tab enter normal model,and user hjkl to move  
:LeaderfTag = search ctag  
:LeaderfLine = search word and varible  
:Leaderf rg = use rg in vim
:CtrlSF + word = search word in multi file    " default use ripgrep to search word. If you want enable it,you must install ripgrep.Otherwise, you need to comment the conf of rg  
```

## How to setup zsh env
### setup
```
cd zsh
./setzshtodefault.sh
```

## How to setup tmux env
### setup
```
cd tmux
cp .tmux.conf ~/   
sudo cp tmux@.service /etc/systemd/system/   
sudo cp init_tmux.sh /usr/local/bin   #by rewrite the init_tmux.sh,it can make some scripts work in tmux when  system starts
sudo systemctl enable/start/status tmux@username
```

### enable plugins
if you want to enable plugins,you should remove the single # in plugins section

### add plugins
```
mkdir -p ~/.tmux/plugins
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
~/.tmux/plugins/tpm/bin/install_plugins
```

### tmux keymaps
prefix in server usually is ctrl+z    
prefix in server usually is `  
