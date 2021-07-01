# send-email-with-ip
Instructions on how to set up a script to send an email with your IP in Ubuntu

1. [Move to the folder where we will set the
scripts](https://askubuntu.com/a/465209)
	```
	cd /usr/local/bin
	```

2. [Install the necessary
tools](https://tecadmin.net/send-email-from-gmail-smtp-via-linux-command/)
	```
	sudo apt-get update
	sudo apt-get install sendemail
	```

3. Download the code from github
	```
	sudo git clone https://github.com/esdandreu/send-email-with-ip.git
	```

4. Navigate to the repository
	```
	cd /usr/local/bin/send-email-with-ip/
	```

5. Make the main script executable
	```
	sudo chmod a+xrw send-email-with-ip.sh
	```

6. Create the `.env` file with your data: Open the file with your favourite
[editor](https://www.informit.com/articles/article.aspx?p=1226928&seqNum=3). In
my case it is `neovim` which can be installed with `sudo apt install neovim`
and then run `sudo vim .env` to open it the file. Once you are editing `.env`,
write:
	```
	export EMAIL="less_secure_email@gmail.com"
	export PASSWORD="password"
	export TO="my_email@gmail.com"
	```

    Make sure that the `EMAIL` you wrote [allows less secure
    apps](https://support.google.com/accounts/answer/6010255?hl=en).

8. Modify the cronjobs
	```
	crontab -e
	```
	Choose an editor in the command line and add a line with:
	```
	@reboot /usr/local/bin/send-email-with-ip.sh
	```
