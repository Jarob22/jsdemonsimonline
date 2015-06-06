cd ~/jsdemonsimonline/jsdemonsimonline
echo "" >> ~/jsdemonsimonline/jsdemonsimonline/fohresults/results.txt
echo "" >> ~/jsdemonsimonline/jsdemonsimonline/fohresults/results.txt
echo "<b>destiny</b>" >> ~/jsdemonsimonline/jsdemonsimonline/fohresults/results.txt
echo "" >> ~/jsdemonsimonline/jsdemonsimonline/fohresults/results.txt
results=$(xvfb-run mono ek_fanatic/Elemental\ Kingdoms\ Fanatic.exe --mode foh -s destiny -n 10000)
sed 's/press.*\.//' <<< $(sed 's/Xlib.*99\"\.//' <<< $results) >> ~/jsdemonsimonline/jsdemonsimonline/fohresults/results.txt
echo "" >> ~/jsdemonsimonline/jsdemonsimonline/fohresults/results.txt
echo "" >> ~/jsdemonsimonline/jsdemonsimonline/fohresults/results.txt
echo "<b>chaos</b>" >> ~/jsdemonsimonline/jsdemonsimonline/fohresults/results.txt
echo "" >> ~/jsdemonsimonline/jsdemonsimonline/fohresults/results.txt
results=$(xvfb-run mono ek_fanatic/Elemental\ Kingdoms\ Fanatic.exe --mode foh -s chaos -n 10000)
sed 's/press.*\.//' <<< $(sed 's/Xlib.*99\"\.//' <<< $results) >> ~/jsdemonsimonline/jsdemonsimonline/fohresults/results.txt
echo "" >> ~/jsdemonsimonline/jsdemonsimonline/fohresults/results.txt
echo "" >> ~/jsdemonsimonline/jsdemonsimonline/fohresults/results.txt
echo "<b>serenity</b>" >> ~/jsdemonsimonline/jsdemonsimonline/fohresults/results.txt
echo "" >> ~/jsdemonsimonline/jsdemonsimonline/fohresults/results.txt
results=$(xvfb-run mono ek_fanatic/Elemental\ Kingdoms\ Fanatic.exe --mode foh -s serenity -n 10000)
sed 's/press.*\.//' <<< $(sed 's/Xlib.*99\"\.//' <<< $results) >> ~/jsdemonsimonline/jsdemonsimonline/fohresults/results.txt
echo "" >> ~/jsdemonsimonline/jsdemonsimonline/fohresults/results.txt
echo "" >> ~/jsdemonsimonline/jsdemonsimonline/fohresults/results.txt
echo "<b>fury</b>" >> ~/jsdemonsimonline/jsdemonsimonline/fohresults/results.txt
echo "" >> ~/jsdemonsimonline/jsdemonsimonline/fohresults/results.txt
results=$(xvfb-run mono ek_fanatic/Elemental\ Kingdoms\ Fanatic.exe --mode foh -s fury -n 10000)
sed 's/press.*\.//' <<< $(sed 's/Xlib.*99\"\.//' <<< $results) >> ~/jsdemonsimonline/jsdemonsimonline/fohresults/results.txt
echo "" >> ~/jsdemonsimonline/jsdemonsimonline/fohresults/results.txt
echo "" >> ~/jsdemonsimonline/jsdemonsimonline/fohresults/results.txt
echo "<b>harmony</b>" >> ~/jsdemonsimonline/jsdemonsimonline/fohresults/results.txt
echo "" >> ~/jsdemonsimonline/jsdemonsimonline/fohresults/results.txt
results=$(xvfb-run mono ek_fanatic/Elemental\ Kingdoms\ Fanatic.exe --mode foh -s harmony -n 10000)
sed 's/press.*\.//' <<< $(sed 's/Xlib.*99\"\.//' <<< $results) >> ~/jsdemonsimonline/jsdemonsimonline/fohresults/results.txt
echo "" >> ~/jsdemonsimonline/jsdemonsimonline/fohresults/results.txt
echo "" >> ~/jsdemonsimonline/jsdemonsimonline/fohresults/results.txt
echo "<b>legacy</b>" >> ~/jsdemonsimonline/jsdemonsimonline/fohresults/results.txt
echo "" >> ~/jsdemonsimonline/jsdemonsimonline/fohresults/results.txt
results=$(xvfb-run mono ek_fanatic/Elemental\ Kingdoms\ Fanatic.exe --mode foh -s legacy -n 10000)
sed 's/press.*\.//' <<< $(sed 's/Xlib.*99\"\.//' <<< $results) >> ~/jsdemonsimonline/jsdemonsimonline/fohresults/results.txt


echo "" >> ~/jsdemonsimonline/jsdemonsimonline/fohresults/results.txt
echo "" >> ~/jsdemonsimonline/jsdemonsimonline/fohresults/results.txt

