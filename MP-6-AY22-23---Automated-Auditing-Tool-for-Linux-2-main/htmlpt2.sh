#!bin/bash
echo "]);" >> res5.html
echo "var options = {'title':'Audit Results', 'width':550, 'height':400};" >> res5.html
echo -e "\tvar chart = new google.visualization.PieChart(document.getElementById('piechart'));
  chart.draw(data, options);" >> res5.html
echo "}" >> res5.html
echo "</script>" >> res5.html
echo "</body>" >> res5.html
echo "</html>" >> res5.html
