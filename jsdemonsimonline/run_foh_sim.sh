cd ~/jsdemonsimonline/jsdemonsimonline
echo "" >> ~/jsdemonsimonline/jsdemonsimonline/fohresults/results.txt
echo "" >> ~/jsdemonsimonline/jsdemonsimonline/fohresults/results.txt
echo "<b>destiny</b>" >> ~/jsdemonsimonline/jsdemonsimonline/fohresults/results.txt
echo "" >> ~/jsdemonsimonline/jsdemonsimonline/fohresults/results.txt
results=$(mono ek_fanatic/ekfc.exe --mode foh -s destiny -n 50000)
sed 's/press.*\.//' <<< $(sed 's/Xlib.*99\"\.//' <<< $results) >> ~/jsdemonsimonline/jsdemonsimonline/fohresults/results.txt
echo "" >> ~/jsdemonsimonline/jsdemonsimonline/fohresults/results.txt
echo "" >> ~/jsdemonsimonline/jsdemonsimonline/fohresults/results.txt
echo "<b>chaos</b>" >> ~/jsdemonsimonline/jsdemonsimonline/fohresults/results.txt
echo "" >> ~/jsdemonsimonline/jsdemonsimonline/fohresults/results.txt
results=$(mono ek_fanatic/ekfc.exe --mode foh -s chaos -n 50000)
sed 's/press.*\.//' <<< $(sed 's/Xlib.*99\"\.//' <<< $results) >> ~/jsdemonsimonline/jsdemonsimonline/fohresults/results.txt
echo "" >> ~/jsdemonsimonline/jsdemonsimonline/fohresults/results.txt
echo "" >> ~/jsdemonsimonline/jsdemonsimonline/fohresults/results.txt
echo "<b>serenity</b>" >> ~/jsdemonsimonline/jsdemonsimonline/fohresults/results.txt
echo "" >> ~/jsdemonsimonline/jsdemonsimonline/fohresults/results.txt
results=$(mono ek_fanatic/ekfc.exe --mode foh -s serenity -n 50000)
sed 's/press.*\.//' <<< $(sed 's/Xlib.*99\"\.//' <<< $results) >> ~/jsdemonsimonline/jsdemonsimonline/fohresults/results.txt
echo "" >> ~/jsdemonsimonline/jsdemonsimonline/fohresults/results.txt
echo "" >> ~/jsdemonsimonline/jsdemonsimonline/fohresults/results.txt
echo "<b>fury</b>" >> ~/jsdemonsimonline/jsdemonsimonline/fohresults/results.txt
echo "" >> ~/jsdemonsimonline/jsdemonsimonline/fohresults/results.txt
results=$(mono ek_fanatic/ekfc.exe --mode foh -s fury -n 50000)
sed 's/press.*\.//' <<< $(sed 's/Xlib.*99\"\.//' <<< $results) >> ~/jsdemonsimonline/jsdemonsimonline/fohresults/results.txt
echo "" >> ~/jsdemonsimonline/jsdemonsimonline/fohresults/results.txt
echo "" >> ~/jsdemonsimonline/jsdemonsimonline/fohresults/results.txt
echo "<b>harmony</b>" >> ~/jsdemonsimonline/jsdemonsimonline/fohresults/results.txt
echo "" >> ~/jsdemonsimonline/jsdemonsimonline/fohresults/results.txt
results=$(mono ek_fanatic/ekfc.exe --mode foh -s harmony -n 50000)
sed 's/press.*\.//' <<< $(sed 's/Xlib.*99\"\.//' <<< $results) >> ~/jsdemonsimonline/jsdemonsimonline/fohresults/results.txt
echo "" >> ~/jsdemonsimonline/jsdemonsimonline/fohresults/results.txt
echo "" >> ~/jsdemonsimonline/jsdemonsimonline/fohresults/results.txt
echo "<b>legacy</b>" >> ~/jsdemonsimonline/jsdemonsimonline/fohresults/results.txt
echo "" >> ~/jsdemonsimonline/jsdemonsimonline/fohresults/results.txt
results=$(mono ek_fanatic/ekfc.exe --mode foh -s legacy -n 50000)
sed 's/press.*\.//' <<< $(sed 's/Xlib.*99\"\.//' <<< $results) >> ~/jsdemonsimonline/jsdemonsimonline/fohresults/results.txt


echo "" >> ~/jsdemonsimonline/jsdemonsimonline/fohresults/results.txt
echo "" >> ~/jsdemonsimonline/jsdemonsimonline/fohresults/results.txt

