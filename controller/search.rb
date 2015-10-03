get "/search/:zipcode" do |zipcode|
	User.all(:plz => zipcode).books.to_json
end