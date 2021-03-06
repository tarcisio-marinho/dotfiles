echo "Updating system"

sudo apt-get -y update
sudo apt-get -y upgrade
sudo apt-get -y dist-upgrade

echo "Installing basic stuff..."

sudo apt-get install -y gcc audacious g++ vim nano gedit firefox git gdb codeblocks htop
sudo apt-get install -y gnome-tweak-tool gnome-calculator gnome-sudoku gnome-chess 
sudo apt-get install -y gnome-mahjongg terminator
sudo apt-get install fish
curl -L https://get.oh-my.fish | fish


echo "Installing python..."

sudo apt-get install -y python3 python3-pip 
sudo apt-get install -y python python-pip

echo "Installing packages from pip"

sudo pip3 install sklearn
sudo pip3 install requests
sudo pip3 install matplotlib
sudo pip3 install numpy
sudo pip3 install pandas
sudo pip3 install jupyter
sudo pip3 install tensorflow
sudo apt-get install -y python3-tk
sudo pip3 install bpython
sudo pip3 install ptpython
sudo pip install pyinstaller

echo "Setting up syd"

git clone https://github.com/tarcisio-marinho/syd.git
cd syd 

gcc syd.c -o syd
chmod 777 syd pull.sh

sudo cp clone /usr/bin/
sudo cp syd /usr/bin/
sudo cp pull.sh /usr/bin/pull

git config --global user.email "tarcisio_marinho09@hotmail.com"
git config --global user.name "tarcisio-marinho"

cd ..

rm -rf syd


echo "Installing KS"
cd KeepSecret/
sudo pip install -r requeriments.txt
pyinstaller -F --clean main.py -n ks
sudo cp dist/ks /usr/bin/ks
cd ~/Desktop/



echo "setting up fish as default shell"

echo "which fish >/dev/null 2>&1 && exec fish -il" >> ~/.bashrc
echo 'alias ".." "cd .."' >> ~/.bashrc


sudo update-alternatives --install /usr/bin/python python /usr/bin/python3.6 2
sudo update-alternatives --config python
