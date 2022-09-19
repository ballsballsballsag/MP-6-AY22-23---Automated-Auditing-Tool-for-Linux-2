#!bin/bash
echo "var options1 = {'title':'Section 1', 'width':300, 'height':300};" >> res.html
echo "var options2 = {'title':'Section 2', 'width':300, 'height':300};" >> res.html
echo "var options3 = {'title':'Section 3', 'width':300, 'height':300};" >> res.html
echo "var options4 = {'title':'Section 4', 'width':300, 'height':300};" >> res.html
echo "var options5 = {'title':'Section 5', 'width':300, 'height':300};" >> res.html
echo "var options6 = {'title':'Section 6', 'width':300, 'height':300};" >> res.html
echo "var options7 = {'title':'Overall', 'width':500, 'height':400};" >> res.html
echo -e "\tvar chart = new google.visualization.PieChart(document.getElementById('piechart1'));
  chart.draw(data1, options1);" >> res.html
echo -e "\tvar chart = new google.visualization.PieChart(document.getElementById('piechart2'));
  chart.draw(data2, options2);" >> res.html
echo -e "\tvar chart = new google.visualization.PieChart(document.getElementById('piechart3'));
  chart.draw(data3, options3);" >> res.html
echo -e "\tvar chart = new google.visualization.PieChart(document.getElementById('piechart4'));
  chart.draw(data4, options4);" >> res.html
echo -e "\tvar chart = new google.visualization.PieChart(document.getElementById('piechart5'));
  chart.draw(data5, options5);" >> res.html
echo -e "\tvar chart = new google.visualization.PieChart(document.getElementById('piechart6'));
  chart.draw(data6, options6);" >> res.html
echo -e "\tvar chart = new google.visualization.PieChart(document.getElementById('piechart7'));
  chart.draw(data7, options7);" >> res.html


echo "}" >> res.html
echo "</script>" >> res.html
echo "</body>" >> res.html
echo "</html>" >> res.html
