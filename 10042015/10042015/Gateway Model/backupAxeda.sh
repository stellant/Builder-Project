#Creating Backup of Axeda Gateway
cd /home/
if [ -d "tempBackupAxeda" ]; then
	cd /home/tempBackupAxeda/DefaultProject/
	rm -vf *
	cd /home/tempBackupAxeda/
	rmdir -v DefaultProject
	rm -vf *
	cd /home/
	rmdir tempBackupAxeda
fi
cd /home/
mkdir tempBackupAxeda
cd /home/tempBackupAxeda/
mkdir DefaultProject
cp -vf /home/Axeda/Gateway/DefaultProject/*.xml /home/tempBackupAxeda/DefaultProject/
cp -vf /home/Axeda/Gateway/*.txt /home/tempBackupAxeda/
cp -vf /home/Axeda/Gateway/*.xml /home/tempBackupAxeda/
cp -vf /home/Axeda/Gateway/*.xml.backup /home/tempBackupAxeda/
cp -vf /home/Axeda/Gateway/*.digest /home/tempBackupAxeda/
