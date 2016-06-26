#!/bin/bash

# This is going to back up everything and keep it there
rsync -a --exclude '.Trash-1000*' ~/Downloads/ "/home/avicennasis/sdcard/backup-all/Downloads"
rsync -a --exclude '.Trash-1000*' ~/pywikibot/ "/home/avicennasis/sdcard/backup-all/pywikibot"
rsync -a --exclude '.Trash-1000*' ~/scripts/ "/home/avicennasis/sdcard/backup-all/scripts"
rsync -a --exclude '.Trash-1000*' ~/TEMP/ "/home/avicennasis/sdcard/backup-all/TEMP"
rsync -a --exclude '.Trash-1000*' ~/.bash_history "/home/avicennasis/sdcard/backup-all/bash_history.txt"
rsync -a --exclude '.Trash-1000*' ~/.bashrc "/home/avicennasis/sdcard/backup-all/bashrc.txt"

#This is a copy that updates as local files are deleted - This is bidirectional 
unison -auto -batch - ~/Downloads/ "/home/avicennasis/sdcard/backup-incremental/Downloads"
unison -auto -batch ~/pywikibot/ "/home/avicennasis/sdcard/backup-incremental/pywikibot"
unison -auto -batch ~/scripts/ "/home/avicennasis/sdcard/backup-incremental/scripts"
unison -auto -batch ~/TEMP/ "/home/avicennasis/sdcard/backup-incremental/TEMP"

#Like any good PC user, we're going to backup the backups
unison -auto -batch /home/avicennasis/sdcard/ /home/avicennasis/usb/32mirror/
