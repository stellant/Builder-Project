#Copying Backed Up Files to Axeda Gateway
cd /home/
if [ -d "tempBackupAxeda" ]; then
	cp -vf /home/tempBackupAxeda/DefaultProject/* /home/Axeda/Gateway/DefaultProject/
	cp -vf /home/tempBackupAxeda/* /home/Axeda/Gateway/
	cd /home/tempBackupAxeda/DefaultProject/
	rm -vf *
	cd /home/tempBackupAxeda/
	rmdir -v DefaultProject
	rm -vf *
	cd /home/
	rmdir tempBackupAxeda
else
	printf "Sorry. Backup Files Not Found."
fi
