# We do books

Passwords are stored in clear text - 'cause we can!


##Authflow

`/user/add` Create user (form encoded)
`/gettoken` returns access token (form encoded username, password)

Use this token for api calls with your use. (HTTP header `X-API`)

`/book/add` Create a book json encoded '{isbn"=>"", "title"=>"", "author"=>"", "qualitiy"=>"", "status"=>""}'
