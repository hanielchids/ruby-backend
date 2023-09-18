# README


To get started create your own 256-bit secret key, using openssl.
Settings for openssl differ.(https://www.openssl.org/)
You can run: 
```openssl rand -base64 32```
Then: ```$env:EDITOR="code --wait"``` and then ```rails credentials:edit```, once the file is open add the following: ```jwt_key: 256-bit-secret-key-here-instead-of-this``` and save.

Run ```rails db:migrate```, then ```bundle install```.
After the gems are done installing you can start the server with ```rails s```. The server will be running on port 3000. 
Images below show examples of postman calls.


![login](https://github.com/hanielchids/ruby-backend/assets/51701270/ab24bf52-ede7-45f6-9834-e20c48310514)
![JWT](https://github.com/hanielchids/ruby-backend/assets/51701270/7a885f14-56f4-4de4-bc90-3a034fecf231)
![packages](https://github.com/hanielchids/ruby-backend/assets/51701270/5d47eb5e-4154-41fd-9d24-d1d6747fde2a)
