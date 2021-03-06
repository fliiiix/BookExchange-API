get "/login" do
	erb :login
end

get "/logout" do

end

def login user, pass
	u = User.first(:username => params["username"], :password => params["password"])
	if not u.nil?
		token = SecureRandom.base64
		t = Token.create({:token => token, :user => u})
		u.save
		return "{'token': '#{token}'}"
	else
		return '{"status": 401, "message": "user is not authenticated" }'
	end
end

post "/login" do
	login params["username"], params["password"]
end

post "/gettoken/?" do
	p params
	login params["username"], params["password"]
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

get "/user/:id/?" do |id|
	User.get(id).to_json
end

get "/user/:username/?" do

end

get "/user/:list/?" do

end

get "/user/:id/books/?" do

end
