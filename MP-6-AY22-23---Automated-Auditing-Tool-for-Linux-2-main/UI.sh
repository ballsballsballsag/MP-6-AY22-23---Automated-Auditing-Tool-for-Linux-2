#!/bin/bash

echo -e "Hello, welcome to Group 6 MP Project.\n Press 1 to run linux benchmarking.\n Press 2 to show graph based on the result from the benchmarking.\n Press 3 to show more information regarding the tool\n Press 4 for the search option\n Use -h for the help menu"
read option
echo "User picked option:$option"
help="-h"

if [ "$option" = 1 ]
then
bash /script/main.sh

elif [ "$option" = 2 ]
then

echo "The graph is a HTML file located at /script. Open the file using firefox to view the graph created"

elif [ "$option" = 3 ]
then
echo -e "This tool is made by Group 6 consisting of Aly,Nigel,Gabrielle and Zhi Nuo. The benchmark used would be CIS.\n For Ubuntu the CIS version is V1.1.0, CentOS is V2.0.0, Debian is V1.0.0 and Fedora is V2.0.0"

elif [ "$option" = 4 ]
then

sh /script/filter.sh



elif [ "$option" = "$help" ]
then
cat /script/help.txt

else
echo "Option does not exist"
fi
