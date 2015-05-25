echo "" >> fohresults/results.txt
echo "" >> fohresults/results.txt
echo "<b>destiny</b>" >> fohresults/results.txt
echo "" >> fohresults/results.txt
results=$(xvfb-run mono ek_fanatic/Elemental\ Kingdoms\ Fanatic.exe --mode foh -s destiny -n 10000)
sed 's/press.*\.//' <<< $(sed 's/Xlib.*99\"\.//' <<< $results) >> fohresults/results.txt
echo "" >> fohresults/results.txt
echo "" >> fohresults/results.txt
echo "<b>chaos</b>" >> fohresults/results.txt
echo "" >> fohresults/results.txt
results=$(xvfb-run mono ek_fanatic/Elemental\ Kingdoms\ Fanatic.exe --mode foh -s chaos -n 10000)
sed 's/press.*\.//' <<< $(sed 's/Xlib.*99\"\.//' <<< $results) >> fohresults/results.txt
echo "" >> fohresults/results.txt
echo "" >> fohresults/results.txt
echo "<b>serenity</b>" >> fohresults/results.txt
echo "" >> fohresults/results.txt
results=$(xvfb-run mono ek_fanatic/Elemental\ Kingdoms\ Fanatic.exe --mode foh -s serenity -n 10000)
sed 's/press.*\.//' <<< $(sed 's/Xlib.*99\"\.//' <<< $results) >> fohresults/results.txt
echo "" >> fohresults/results.txt
echo "" >> fohresults/results.txt
echo "<b>fury</b>" >> fohresults/results.txt
echo "" >> fohresults/results.txt
results=$(xvfb-run mono ek_fanatic/Elemental\ Kingdoms\ Fanatic.exe --mode foh -s fury -n 10000)
sed 's/press.*\.//' <<< $(sed 's/Xlib.*99\"\.//' <<< $results) >> fohresults/results.txt
echo "" >> fohresults/results.txt
echo "" >> fohresults/results.txt
echo "<b>harmony</b>" >> fohresults/results.txt
echo "" >> fohresults/results.txt
results=$(xvfb-run mono ek_fanatic/Elemental\ Kingdoms\ Fanatic.exe --mode foh -s harmony -n 10000)
sed 's/press.*\.//' <<< $(sed 's/Xlib.*99\"\.//' <<< $results) >> fohresults/results.txt
echo "" >> fohresults/results.txt
echo "" >> fohresults/results.txt
echo "<b>legacy</b>" >> fohresults/results.txt
echo "" >> fohresults/results.txt
results=$(xvfb-run mono ek_fanatic/Elemental\ Kingdoms\ Fanatic.exe --mode foh -s legacy -n 10000)
sed 's/press.*\.//' <<< $(sed 's/Xlib.*99\"\.//' <<< $results) >> fohresults/results.txt


echo "" >> fohresults/results.txt
echo "" >> fohresults/results.txt

