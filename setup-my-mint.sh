# Update apt
sudo apt update
sudo apt full-upgrade

# Install Nvidia-Drivers
sudo add-apt-repository ppa:graphics-drivers/ppa
sudo apt update
sudo apt install nvidia-driver-450
sudo apt install nvidia-settings

# Install git
sudo apt install git

# Install zsh
sudo apt install zsh

# Change default shell to zsh
chsh -s $(which zsh)

# Install Powerlevel10k theme
mkdir ~/.themes
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/.themes/powerlevel10k
mkdir ~/.fonts
wget https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Regular.ttf -P ~/.fonts
wget https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold.ttf -P ~/.fonts
wget https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Italic.ttf -P ~/.fonts
wget https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold%20Italic.ttf -P ~/.fonts
sudo fc-cache -fv

# Install vim
sudo apt install vim

## Dev Tools
mkdir ~/Developer
mkdir ~/tools

# Install NodeJS
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
sudo apt install nodejs

# Install Flutter
git clone https://github.com/flutter/flutter.git -b dev --depth 1
mv flutter ~/tools/flutter
~/tools/flutter/bin/flutter config --no-analytics
~/tools/flutter/bin/flutter doctor --android-licenses

# Setup dotfiles
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
git clone --bare https://github.com/jhoogstraat/oh-my-dotfiles $HOME/.dotfiles
mkdir -p .config-backup && \
config checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | \
xargs -I{} mv {} .config-backup/{}
config checkout
config config --local status.showUntrackedFiles no