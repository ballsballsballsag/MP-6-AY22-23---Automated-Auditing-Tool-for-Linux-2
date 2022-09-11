#!bin/bash
if test -f "res5.html"; then
    rm res5.html
fi
echo "<!DOCTYPE html>" >> res5.html
echo '<html lang="en-US">' >> res5.html
echo "<body>" >> res5.html
echo "<h1>Section 5<h1>" >> res5.html
echo '<div id="piechart"></div>' >> res5.html
echo '<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>' >> res5.html
echo '<script type="text/javascript">' >> res5.html
echo "google.charts.load('current', {'packages':['corechart']});" >> res5.html
echo "google.charts.setOnLoadCallback(drawChart);" >> res5.html
echo "function drawChart() {" >> res5.html
echo -e "\tvar data = google.visualization.arrayToDataTable([" >> res5.html

