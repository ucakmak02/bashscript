Executing Commands and Scripts at Reboot and Startup in Linux

First Method:rc.local

#Give permissions

$ sudo chmod +x /etc/rc.local

#Edit

$ sudo vi /etc/rc.local

#Run .sh file

sh /location/script.sh 

Second Method:Crontab 

#Edit

crontab -e

@reboot ( sh /location/backup.sh )

#For Send Email

sudo apt-get install mailutils

sudo apt-get install ssmtp
nano /etc/ssmtp/ssmtp.conf

#Add 

mailhub=smtp.gmail.com:587
UseSTARTTLS=YES
AuthUser=[senders_email_address]
AuthPass=[senders_email_password]
TLS_CA_File=/etc/pki/tls/certs/ca-bundle.crt

echo "This mail"| sendmail [receivers_email_address]
