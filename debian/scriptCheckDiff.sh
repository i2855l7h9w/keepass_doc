#!/bin/bash

while true
do
	sync_command="--delete --exclude=.dropbox ${HOME}/Dropbox/Applications/AppKeeWeb ${HOME}/GDrive";
	if rsync -avn ${sync_command} | grep -Fq "AppKeeWeb";
	then
		if ! pidof -x scriptSaveGDrive.sh >/dev/null;
		then
			# echo "Diffs to save";
			konsole -e "${HOME}/GDrive/AppKeeWeb/scriptSaveGDrive.sh"
		# else
			# echo "Sync already on course";
		fi
	# else
		# echo "No diffs";
	fi
	sleep 60s;
done
