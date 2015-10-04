# backup
This is just a simple little backup script using rsync. It copies all important folders from the home directory to a backup location. (In this case it's the SD card in the laptop this script was written for.) 

It creates two folders; backup-all, which backs up everything for all time, and backup-incremental, which is a 'living' backup that deletes files from the backup as they are deleted from the source directories. 

This relies on unison, which is everything that rsync wishes it  was.
