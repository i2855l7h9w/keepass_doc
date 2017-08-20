#!/bin/bash

sync_command_GDrive="--delete --exclude=.dropbox ${HOME}/Dropbox/Applications/AppKeeWeb ${HOME}/GDrive";
sync_command_KW="--delete --exclude=.dropbox ${HOME}/Dropbox/Applications/AppKeeWeb/ ${HOME}/Dropbox/Applications/KeeWeb";
echo "Files about to be updated (GDrive):";
rsync -avn ${sync_command_GDrive};
echo "Files about to be updated (KeeWeb):";
rsync -avn ${sync_command_KW};
read -p "Continue (Y/n)? " -r;
echo;
if [[ $REPLY =~ ^[Y]$ ]];
then
	rsync -a ${sync_command_KW};
	rsync -a ${sync_command_GDrive};
	cd ~/GDrive/AppKeeWeb;
	~/gopath/bin/drive push -ignore-name-clashes -hidden -ignore-conflict;
fi
sleep 1s;
