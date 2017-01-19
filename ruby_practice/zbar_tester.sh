#sudo apt-get install libzbar0
#brew install zbar
#gem install zbar
for i in drive-download-20161212T191811Z/*; do 
	if zbarimg "$i" >/dev/null ; then
		zbarimg "$i" | cut -c 10-
	else
		echo "NO DATA FOUND"
	fi
done
