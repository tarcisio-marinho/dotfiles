echo "Updating system"

sudo apt-get -y update
sudo apt-get -y upgrade
sudo apt-get -y dist-upgrade

echo "Installing basic stuff..."

sudo apt-get install -y gcc audacious g++ vim nano gedit firefox git gdb codeblocks htop
sudo apt-get install -y gnome-tweak-tool gnome-calculator gnome-sudoku gnome-chess 
sudo apt-get install -y gnome-mahjongg 



echo "Installing python..."

sudo apt-get install -y python3 python3-pip 


echo "Setting up syd"

git clone https://github.com/tarcisio-marinho/syd.git
cd syd 

gcc syd.c -o syd
chmod 777 syd pull.sh

sudo cp syd /usr/bin/
sudo cp pull.sh /usr/bin/pull

git config --global user.email "tarcisio_marinho09@hotmail.com"
git config --global user.name "tarcisio-marinho"

cd ..

rm -rf syd

echo "Installing Projects..."

cd /home/tarcisio/Desktop/
git clone https://github.com/tarcisio-marinho/GonnaCry.git
git clone https://github.com/tarcisio-marinho/RSB-Framework.git
git clone https://github.com/tarcisio-marinho/ML.git

echo "Installing packages from pip"

sudo pip3 install sklearn
sudo pip3 install requests
sudo pip3 install matplotlib
sudo pip3 install numpy
sudo pip3 install pandas
sudo pip3 install jupyter
sudo apt-get install -y python3-tk

sudo apt-get install indicator-multiloader
