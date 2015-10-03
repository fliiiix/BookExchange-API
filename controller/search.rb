get "/search/:zipcode" do |zipcode|
	Book.all(:plz => zipcode).to_json
end