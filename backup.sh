
echo backup starting

sleep 60

cd ~/location/your_project
docker-compose up 

cd ~/location/your_second_project
docker-compose up

sleep 60

xdg-open http://yourdomain  #for run flask applicaiton 

#send mail for info
echo "System is rebooted"| sendmail [your_mail@gmail.com]


