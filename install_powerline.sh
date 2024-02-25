# Fail on any command.
set -eux pipefail
sleep 5
# Install Powerline for VIM.
sudo apt install -y python3-pip
pip3 install --user powerline-status
sudo cp configs/.vimrc ~/.vimrc
sudo apt install -y fonts-powerline

# Install Patched Font
mkdir ~/.fonts
sudo cp -a fonts/. ~/.fonts/
fc-cache -vf ~/.fonts/
