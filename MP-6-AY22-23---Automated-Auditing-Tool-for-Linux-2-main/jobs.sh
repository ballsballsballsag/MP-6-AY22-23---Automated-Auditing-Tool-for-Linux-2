

echo  "Hello, at which intervals of the year would you like the benchmark to run automatically?\nUse -h for the help option,it will also show the intervals which the benchmark would be ran on depending on the presets"
read option
help="-h"



#echo "User wants to search for:$option"

#findings=$(grep $option /script/report.txt)
#echo "$findings"


if [ "$option" = 1 ]
then
crontab -r
crontab -l > 3monthcron

echo "0 0 1 */3 * /script/main.sh" >> 3monthcron

crontab 3monthcron


elif [ "$option" = 2 ]
then
crontab -r
crontab -l > 6monthcron

echo "0 0 1 */6 * /script/main.sh" >> 6monthcron

crontab 6monthcron


elif [ "$option" = 3 ]
then
crontab -r
crontab -l > 9monthcron

echo "0 0 1 */9 * /script/main.sh" >> 9monthcron

crontab 9monthcron



elif [ "$option" = 4 ]
then
crontab -r
crontab -l > yearlycron

echo "0 0 1 1 * /script/main.sh" >> yearlycron

crontab yearlycron


elif [ "$option" = "$help" ]
then
cat help_cronjob.txt

#elif [ "$option" = 6 ]
#then
#crontab -l > testcron

#echo "11 16 10 9 * /script/main.sh" >> testcron

#crontab testcron

else
echo "Option is invalid"
fi
