# send-email-with-ip
Instructions on how to set up a script to send an email with your IP in Ubuntu

[Move to the folder where we will set the
scripts](https://askubuntu.com/a/465209)
```
cd /usr/local/bin
```

[Install the necessary
tools](https://tecadmin.net/send-email-from-gmail-smtp-via-linux-command/)
```
sudo apt-get update
sudo apt-get install sendemail
```

Download the code from github
```
sudo git clone https://github.com/esdandreu/send-email-with-ip.git
```

Navigate to the repository
```
cd /usr/local/bin/send-email-with-ip/
```

Make the script executable
```
sudo chmod a+xrw send-email-with-ip.sh
```

Create the `.env` file with your data: Open the file with your favourite
[editor](https://www.informit.com/articles/article.aspx?p=1226928&seqNum=3). In
my case it is `neovim` which can be installed with `sudo apt install neovim`
and then run `sudo vim .env` to open it the file. Once you are editing `.env`,
write:
```
export EMAIL="less_secure_email@gmail.com"
export PASSWORD="password"
export TO="my_email@gmail.com"
```

Modify the cronjobs
```
crontab -e
```

Choose an editor in the command line and add a line with:
```
@reboot /usr/local/bin/send-email-with-ip.sh
```
