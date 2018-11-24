## setup
cp .tmux.conf ~/   
sudo cp tmux@.service /etc/systemd/system/   
sudo cp init_tmux.sh /usr/local/bin   #by rewrite the init_tmux.sh,it can make some scripts work in tmux when  system starts
sudo systemctl enable/start/status tmux@username

## enable plugins
if you want to enable plugins,you should remove the single # in plugins section

## add plugins
mkdir -p ~/.tmux/plugins  
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm  
~/.tmux/plugins/tpm/bin/install_plugins  
