

echo  "Hello, which part of the report would u like to search? \n Use -h to see search filter which have been preset "
read option
help="-h"
file="/script/report.txt"

#echo "User wants to search for:$option"

#findings=$(grep $option /script/report.txt)
#echo "$findings"

if [ -f "$file" ]
then

if [ "$option" = 1 ]
then
echo "User wants to search for: Pass"
grep Pass /script/report.txt

elif [ "$option" = 2 ]
then
echo "User wants to search for: Fail"
grep Fail /script/report.txt

elif [ "$option" = 3 ]
then
echo "User wants to search for: Level 1 benchmarks"
cat /script/report_lvl1.txt

elif [ "$option" = 4 ]
then
echo "User wants to search for: Level 2 benchmarks"
cat /script/report_lvl2.txt

elif [ "$option" = "$help" ]
then
cat /script/help_filter.txt

else

findings=$(grep $option /script/report.txt)
echo "$findings"

fi

else
echo "Please run option 1: run Linux benchmarking before doing seach. Currently file does not exist" 

fi
