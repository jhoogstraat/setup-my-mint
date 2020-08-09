mkdir ./apptmp
cd apptmp

# Google Chrome
wget "https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb"
sudo apt install ./google-chrome-stable_current_amd64.deb

# Spotify
curl -sS https://download.spotify.com/debian/pubkey.gpg | sudo apt-key add - 
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt update && sudo apt install spotify-client

# VSCode
wget "https://go.microsoft.com/fwlink/?LinkID=760868" -O vscode.deb 
sudo apt install ./vscode.deb
mkdir -p ~/.config/Code/User/settings.json
cp ../vscode_settings.json 
code --install-extension dart-code.flutter
code --install-extension luanpotter.dart-import
code --install-extension eamodio.gitlens
code --install-extension zhuangtongfa.material-theme
code --install-extension gruntfuggly.todo-tree

# Insomnia
wget "https://updates.insomnia.rest/downloads/ubuntu/latest" -O insomnia.deb
sudo apt install ./insomnia.deb

# Android Studio
wget "https://r4---sn-8xgn5uxa-i5he.gvt1.com/edgedl/android/studio/ide-zips/4.0.1.0/android-studio-ide-193.6626763-linux.tar.gz?cms_redirect=yes&mh=Ft&mip=89.27.237.90&mm=28&mn=sn-8xgn5uxa-i5he&ms=nvh&mt=1595249599&mv=m&mvi=4&pl=24&shardbypass=yes" -O android_studio.tar.gz
mkdir /opt/google
tar xf android_studio.tar.gz 
sudo mv android-studio /opt/google/android-studio

# Albert
curl https://build.opensuse.org/projects/home:manuelschneid3r/public_key | sudo apt-key add -
echo 'deb http://download.opensuse.org/repositories/home:/manuelschneid3r/xUbuntu_20.04/ /' | sudo tee /etc/apt/sources.list.d/home:manuelschneid3r.list
sudo wget -nv https://download.opensuse.org/repositories/home:manuelschneid3r/xUbuntu_20.04/Release.key -O - | sudo apt-key add -
sudo apt update
sudo apt install albert

cd ..
rm -rf ./apptmp