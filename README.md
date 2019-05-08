# raspberry-IP
telegram bot which sends raspberry pi's IP 

## Setting up:
- Download the script via:
```wget https://raw.githubusercontent.com/eeddaann/raspberry-IP/master/send_ip.sh```
- Replace the **<TOKEN>** with the token you've got from the botfather
- Replace the **<CHAT_ID>** with the real chat ID:
  - send message to the bot
  - open the following URL in your web-browser: https://api.telegram.org/bot<TOKEN>/getUpdates (replace <TOKEN> with your bot token).
  - copy the value of 'id'
- Change the permissions of script:
  ```sudo chmod 755 send_ip.sh```
- Execute the script to verify that it works:
 ```./send_ip.sh```
- To run the script on boot execute:
  ```sudo mv send_ip.sh /etc/init.d/send_ip.sh && sudo update-rc.d send_ip.sh defaults```
  


