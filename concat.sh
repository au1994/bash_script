putcolor()
{
	tput setaf $1;
}
remcolor()
{
	tput sgr0;
}
putcolor 1
echo Hello\ $(id -F)
echo Below are your system details.

printf "\n1.Current User\n"

remcolor
id -F


putcolor 1
printf "\n2.All logged in users\n"

remcolor
last |grep "logged in" | cut -d ' ' -f 1 | uniq

putcolor 1
printf "\n3.Date\n"

remcolor
date

putcolor 1
printf "\n4.Calendar\n"

remcolor
cal

putcolor 1
printf "\n5.Physical Memory Usage\n"
remcolor
top -l 1 -s 0 | grep PhysMem

putcolor 1
printf "\n6.CPU usage\n"
remcolor
top -l 1 -s 0 | grep "CPU usage"

putcolor 1
printf "\n7.Processes\n"
remcolor
top -U $USER -l 1 | grep Process

putcolor 1
printf "\n8.Disk details\n"
remcolor
df | tr -s "   " | cut -d ' ' -f 1,3,4 > file1.txt
column -t file1.txt



