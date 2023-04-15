#!/bin/bash

pass=$1
temp_folder='tmp-data'

unar -p $pass ph -o ./$temp_folder/

cp $temp_folder/ph/ph ~/.ssh/ph
cp $temp_folder/ph/ph.pub ~/.ssh/ph.pub

rm -r $temp_folder/

chmod 400 ~/.ssh/ph

mv ~/.ssh/config ~/.ssh/config.bak 2>/dev/null

echo '# My Personal
Host id_rsa
HostName host
User root
IdentityFile ~/.ssh/id_rsa

# My PH Github
Host ph
HostName github.com
User thostavo17@proton.me
IdentityFile ~/.ssh/ph' > ~/.ssh/config

echo 'Successfully: ssh initialized successfully'
