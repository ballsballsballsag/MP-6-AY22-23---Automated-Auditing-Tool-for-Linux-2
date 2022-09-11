

echo  "Hello, which part of the level of benchmarking would u like to do today? \nUse -h to change the benchmarking level "
read option
help="-h"
#file="/script/report.txt"


if [ "$option" = 1 ]
then
echo "User wants to do ONLY level 1 - Server/Workstation benchmarking"
bash main_level1.sh

elif [ "$option" = 2 ]
then
echo "User wants to do ONLY level 2 - Server/Workstation benchmarking"
bash main_level2.sh



elif [ "$option" = 3 ]
then
echo "User wants to do a complete benchmarking"
bash main.sh


elif [ "$option" = "$help" ]
then
cat /script/help_benchmark.txt


else
echo "Option does not exist"

fi
