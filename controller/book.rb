get "/book/list/?" do
	content_type :json
	Book.all.to_json
end

get "/book/add" do
	erb :addBook
end

post "/book/add" do
	token!
	# '{isbn"=>"", "title"=>"", "author"=>"", "qualitiy"=>"", "status"=>""}'
	params.delete("id")
	u = User.get(session['userid'])
	params[:user] = u
	Book.create(params)
end

get "/book/edit" do
end

get "/book/remove" do
end

get "/book/:isbn/?" do
	'{
	"isbn": "",
	"author": "",
	"title": "",
	"image": "",
	}'
end

get "/book/:userid/?" do
end
