#! /bin/bash

# install the dependencies.

apt-get update

apt-get install libcjose-dev libjansson-dev libcurl4-gnutls-dev

# Move into a directory of your choosing (in this case I'm using my home directory)

cd /home/clt16

# get the package

wget https://github.com/zmartzone/mod_auth_openidc/archive/v2.4.6.tar.gz

# unpack the above package

tar -xvf  v2.4.6.tar.gz

#move into unpacked directory

cd  mod_auth_openidc-2.4.6

#run the following commands to compile and install from the source.

./autogen.sh 

#NOTE: This command needs to changed slightly from documentation for Debian 9.  Change apxs2 to apxs
./configure --with-apxs=/opt/apache2/bin/apxs

make
make install



