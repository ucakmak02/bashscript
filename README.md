# Executing Commands Reboot and Startup in Linux

## First Method:rc.local

### Give permissions

> $ sudo chmod +x /etc/rc.local

### Edit

> $ sudo vi /etc/rc.local

### Run .sh file

sh /location/script.sh 

## Second Method:Crontab 

### Edit

> crontab -e

@reboot ( sh /location/backup.sh )

### For Send Email

> sudo apt-get install mailutils

> sudo apt-get install ssmtp
> nano /etc/ssmtp/ssmtp.conf

### Add 

``` #
#Config file for sSMTP sendmail

#

#The person who gets all mail for userids < 1000

#Make this empty to disable rewriting.

#root=postmaster

root=my_email_adress@gmail.com@gmail.com


#The place where the mail goes. The actual machine name is required no 


#MX records are consulted. Commonly mailhosts are named mail.domain.com

#mailhub=mail

mailhub=smtp.gmail.com:587

#Where will the mail seem to come from?

rewriteDomain=gmail.com

#The full hostname

hostname=localhost

#Are users allowed to set their own From: address?

#YES - Allow the user to specify their own From: address

#NO - Use the system generated From: address

FromLineOverride=YES
AuthUser=my_email_adress@gmail.com
AuthPass=my_password
UseTLS=YES
UseSTARTTLS=YES
```
### Send Mail in Command Line
> echo "This mail"| sendmail [receivers_email_address]
