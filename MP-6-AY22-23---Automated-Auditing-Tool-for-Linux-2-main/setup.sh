#!/bin/bash
echo "Please provide full path to the folder containing all the scripts"
read option
add="/*"
final="$option$add"




sudo mkdir /script
sudo cp -R $final /script
sudo chmod u+x /script/UI.sh
sudo ln -s /script/UI.sh /usr/local/bin/audit
#5=$(crontab -u audit -e)

echo "Setup completed. Use command <audit> to run the CLI UI.\nUse root or sudo approved accounts only"
