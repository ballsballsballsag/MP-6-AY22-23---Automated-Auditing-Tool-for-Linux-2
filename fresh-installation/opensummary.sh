user=$(who -q | head -1)
sudo -u $user -H sh -c "firefox file:///script/res.html" 2>/dev/null
