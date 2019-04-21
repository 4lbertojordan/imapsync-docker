#!/bin/bash

#Host to sync
sourcehost=host1.host.com
destinyhost=host2.host.com

#SSL sync

sslhost1=ssl1
sslhost2=ssl2

#Accounts to sync

account1=mail1@host1.com
password1=mailpassword1
account2=mail2@host1.com
password2=mailpassword2
account3=mail3@host1.com
password3=mailpassword3
account4=mail4@host1.com
password4=mailpassword4
account5=mail5@host1.com
password5=mailpassword5
account6=mail6@host1.com
password6=mailpassword6


imapsync --host1 $sourcehost \
	   --user1 $account1 \
	   --password1 $password1 \
	   --$ssl1 \
	   --host2 $destinyhost \
	   --user2 $account1 \
	   --password2 $password1 \
	   --$ssl2