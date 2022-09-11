

echo  "Hello, which part of the report would u like to search? \nUse -h to see search filter which have been preset "
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
cat /script/report_lvl1.txt 2> \dev\null
echo "\nIf user does not see anything please run benchmarking with option 1 before doing search for level 1 benchmark."


elif [ "$option" = 4 ]
then
echo "User wants to search for: Level 2 benchmarks"
cat /script/report_lvl2.txt 2> \dev\null
echo "\nIf user does not see anything please run benchmarking with option 2 before doing search for level 2 benchmark."

elif [ "$option" = "$help" ]
then
cat /script/help_filter.txt

else

findings=$(grep $option /script/report.txt)
echo "$findings"

fi

else
echo "Please run benchmarking with option 3 for a complete Linux benchmarking before doing seach. Currently file does not exist" 

fi
