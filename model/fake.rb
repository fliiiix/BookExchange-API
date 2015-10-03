#just fake all the data

u = User.create(:username => "testuser", :password => "1234", :mail => "testuser@gmail.com", :plz => 6000) 
Token.create(:token => "XXXYYYXXX", :user => u)
