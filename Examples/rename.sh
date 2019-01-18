i=1
while read -r line 
do
mv $line pic-$((i++)).jpg
done < lista.txt