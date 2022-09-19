#!bin/bash
if test -f "res.html"; then
    rm res.html
fi
echo "<!DOCTYPE html>" >> res.html
echo '<html lang="en-US">' >> res.html
echo "<body>" >> res.html
echo "<h1>Audit Results Overview<h1>" >> res.html
echo "<style>" >> res.html
echo "a {" >> res.html
echo "display:inline-block;" >> res.html
echo "}" >> res.html
echo "div {" >> res.html
echo "display: inline-block;" >> res.html
echo "}" >> res.html
echo "</style>" >> res.html
echo '<div><a id="piechart1"><a id="piechart2"><a id="piechart3"><a id="piechart4"><a id="piechart5"><a id="piechart6"></div>' >> res.html
echo '<div id ="piechart7"></div>' >> res.html
echo '<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>' >> res.html
echo '<script type="text/javascript">' >> res.html
echo "google.charts.load('current', {'packages':['corechart']});" >> res.html
echo "google.charts.setOnLoadCallback(drawChart);" >> res.html
echo "function drawChart() {" >> res.html
echo -e "\tvar data1 = google.visualization.arrayToDataTable([" >> res.html

