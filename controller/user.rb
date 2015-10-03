get "/login" do

end

get "/logout" do

end

post "/login" do

end

post "/gettoken/?" do
	u = User.first(:username => params["username"], :password => params["password"])
	if not u.nil?
		token = SecureRandom.base64
		t = Token.create({:token => token, :user => u})
		u.save
		return "{'token': #{token}}"
	else
		return '{"status": 401, "message": "user is not authenticated" }'
	end
end

get "/user/add" do
	erb :addUser
end

post "/user/add" do
	# {"username"=>"", "password"=>"", "mail"=>""}
	params.delete("id")
	p params
	User.create(params)
end

get "/user/:id/?" do

end

get "/user/:username/?" do

end

get "/user/:list/?" do

end

get "/user/:id/books/?" do

end
