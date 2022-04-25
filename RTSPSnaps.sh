#!/bin/bash
while nc -vz -w2 10.0.20.8 80; do
	wget --quiet "http://10.0.20.8/zm/cgi-bin/nph-zms?scale=100&width=640p&height=480px&mode=single&monitor=9&user=UserNameHere&pass=PassWordHere" -O /tmp/Kitchen_tmp.jpg
	wget --quiet "http://10.0.20.8/zm/cgi-bin/nph-zms?scale=100&width=640p&height=480px&mode=single&monitor=10&user=UserNameHere&pass=PassWordHere" -O /tmp/BackPorch_tmp.jpg
	wget --quiet "http://10.0.20.8/zm/cgi-bin/nph-zms?scale=100&width=640p&height=480px&mode=single&monitor=12&user=UserNameHere&pass=PassWordHere" -O /tmp/LivingRoom_tmp.jpg
	wget --quiet "http://10.0.20.8/zm/cgi-bin/nph-zms?scale=100&width=640p&height=480px&mode=single&monitor=16&user=UserNameHere&pass=PassWordHere" -O /tmp/FrontPorch1_tmp.jpg
	wget --quiet "http://10.0.20.8/zm/cgi-bin/nph-zms?scale=100&width=640p&height=480px&mode=single&monitor=17&user=UserNameHere&pass=PassWordHere" -O /tmp/FrontPorch2_tmp.jpg
	wget --quiet "http://10.0.20.8/zm/cgi-bin/nph-zms?scale=100&width=640p&height=480px&mode=single&monitor=20&user=UserNameHere&pass=PassWordHere" -O /tmp/Shed_tmp.jpg
	wget --quiet "http://10.0.20.8/zm/cgi-bin/nph-zms?scale=100&width=640p&height=480px&mode=single&monitor=21&user=UserNameHere&pass=PassWordHere" -O /tmp/BackYard_tmp.jpg
	wget --quiet "http://10.0.20.8/zm/cgi-bin/nph-zms?scale=100&width=640p&height=480px&mode=single&monitor=22&user=UserNameHere&pass=PassWordHere" -O /tmp/CrawlSpace_tmp.jpg
	wget --quiet "http://10.0.20.8/zm/cgi-bin/nph-zms?scale=100&width=640p&height=480px&mode=single&monitor=23&user=UserNameHere&pass=PassWordHere" -O /tmp/3DPrinter_tmp.jpg
	mv /tmp/BackPorch_tmp.jpg /tmp/BackPorch.jpg
	mv /tmp/BackYard_tmp.jpg /tmp/BackYard.jpg
	mv /tmp/CrawlSpace_tmp.jpg /tmp/CrawlSpace.jpg
	mv /tmp/FrontPorch1_tmp.jpg /tmp/FrontPorch1.jpg
	mv /tmp/FrontPorch2_tmp.jpg /tmp/FrontPorch2.jpg
	mv /tmp/Kitchen_tmp.jpg /tmp/Kitchen.jpg
	mv /tmp/LivingRoom_tmp.jpg /tmp/LivingRoom.jpg
	mv /tmp/Shed_tmp.jpg /tmp/Shed.jpg
	mv /tmp/3DPrinter_tmp.jpg /tmp/3DPrinter.jpg
	sleep .5 
done
