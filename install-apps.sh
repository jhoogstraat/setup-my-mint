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

# PDFSam Visual
wget "https://github.com/torakiki/pdfsam-visual-public/releases/download/v2.1.7/pdfsam-visual_2.1.7_amd64.deb"
sudo apt install ./pdfsam-visual_2.1.7_amd64.deb
mkdir ~/.config/PDFsam\ Visual
echo '{"autoReportErrors":"false","lang":"de","licenseKey":"PV3-E84EB78B-26EA-49EC-A938-2F269B752F89","licenseExpires":15967066053500,"licenseToken":"espSo+P57BSGiaYVZ8Ie9nR5jet1wBCu7cu6FcJGuSgLOqb87kSKeSY3fB+q+6tMktkB1HWF8JjmCBwnKGUSgQHDENon8E72mr413LDcCDY=","startPage":"visually-combine-reorder-pdf.ejs","splitByPages-outputPattern":"[CURRENTPAGE]-[BASENAME]","proxyServer":"","proxyUsr":"","proxyPwd":"","outputFolder":"SRC"}' > ~/.config/PDFsam\ Visual/pvp.pref

cd ..
rm -rf ./apptmp