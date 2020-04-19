#Muhammad Hamza Anees

#Bash File CroneTab File 
#*/5 * * * * bash /home/<USER_NAME>/Desktop/Linux.sh

#Title
echo 'CronJob Monitor Server' >> /home/<USER_NAME>/Desktop/Folder/$(date +\%d-\%m-\%Y_\%H:\%M:\%S)-hamza.txt

#Total Memory in GB 
echo 'Memory:' $(grep MemTotal /proc/meminfo | awk '{print $2 / 1024 / 1024}') 'GB' >> /home/<USER_NAME>/Desktop/Folder/$(date +\%d-\%m-\%Y_\%H:\%M:\%S)-hamza.txt

# All CPUs
echo 'CPUs:'  $(nproc --all) >> /home/<USER_NAME>/Desktop/Folder/$(date +\%d-\%m-\%Y_\%H:\%M:\%S)-hamza.txt

#All Storage Available Space For All Drives/Mount
echo 'Total storage space available for all mount:' >> /home/<USER_NAME>/Desktop/Folder/$(date +\%d-\%m-\%Y_\%H:\%M:\%S)-hamza.txt
echo $(df -H --output=source) >> /home/<USER_NAME>/Desktop/Folder/$(date +\%d-\%m-\%Y_\%H:\%M:\%S)-hamza.txt
echo $(df -H --output=avail) >> /home/<USER_NAME>/Desktop/Folder/$(date +\%d-\%m-\%Y_\%H:\%M:\%S)-hamza.txt

#List All 5 Top Process Of Root
echo 'List top 5 process for root user' >> /home/<USER_NAME>/Desktop/Folder/$(date +\%d-\%m-\%Y_\%H:\%M:\%S)-hamza.txt
echo $(ps aux | grep root | head -n 5) >> /home/<USER_NAME>/Desktop/Folder/$(date +\%d-\%m-\%Y_\%H:\%M:\%S)-hamza.txt

#List All The Ports Exposed And Their Process With Application Run It
echo 'List the ports exposed and the process associate with it' >> /home/<USER_NAME>/Desktop/Folder/$(date +\%d-\%m-\%Y_\%H:\%M:\%S)-hamza.txt
echo $(sudo netstat -tunlp) >> /home/<USER_NAME>/Desktop/Folder/$(date +\%d-\%m-\%Y_\%H:\%M:\%S)-hamza.txt

#Files Size In MB And Descending Order Show
echo 'For a given directory list the files with their size in (MBs) and sort them descending order' >> /home/<USER_NAME>/Desktop/Folder/$(date +\%d-\%m-\%Y_\%H:\%M:\%S)-hamza.txt
echo $(ls -r -sh -p --block-size=M | grep -v /) >> /home/<USER_NAME>/Desktop/Folder/$(date +\%d-\%m-\%Y_\%H:\%M:\%S)-hamza.txt

#Folders Size In MB And Descending Order Show
echo 'For a given directory list the folders with their size in (MBs) and sort them descending order' >> /home/<USER_NAME>/Desktop/Folder/$(date +\%d-\%m-\%Y_\%H:\%M:\%S)-hamza.txt
echo $(du -sh *'/'  --block-size=M | sort -r) >> /home/<USER_NAME>/Desktop/Folder/$(date +\%d-\%m-\%Y_\%H:\%M:\%S)-hamza.txt

echo 'End' >> /home/<USER_NAME>/Desktop/Folder/$(date +\%d-\%m-\%Y_\%H:\%M:\%S)-hamza.txt
