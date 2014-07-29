sudo apt-get update
sudo apt-get install gcc g++ build-essential libopenmpi-dev openmpi-bin default-jdk cmake zlib1g-dev git
# vim
git clone https://github.com/jimmycode/vimrc.git
mv vimrc/.vimrc ~
rm -fr vimrc
# graphlab
git clone https://github.com/graphlab-code/graphlab.git
