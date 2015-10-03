# We do books

Passwords are stored in clear text - 'cause we can!

##User

### General

[GET] `/user/:id` get detailed user infos

###Authflow

[POST] `/user/add` Create user
[POST] `/gettoken` returns access token '{"username": "testuser", "password": "foobar"}'

Use this token for api calls with your use. (HTTP header `X-API`)

[POST] `/book/add` Create a book json encoded '{isbn":"", "title":"", "author":"", "qualitiy":"", "status":""}'


##Search hot books nearby

[GET] `/search/:zipcode`
