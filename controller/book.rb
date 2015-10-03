get "/book/list/?" do
	p Book.all
	Book.all.to_json
end

get "/book/add" do
	erb :addBook
end

post "/book/add" do
	params.delete("id")
	Book.create(params)
	"ok"
end

get "/book/edit" do
end

get "/book/remove" do
end

get "/book/:isbn/?" do
end

get "/book/:userid/?" do
end
