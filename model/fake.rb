#just fake all the data

u = User.create(:username => "testuser", :password => "1234", :mail => "testuser@gmail.com", :plz => 6000)
Token.create(:token => "XXXYYYXXX", :user => u)


Book.create(:isbn => "1856694739", :title => "Book Design", :author => "Andrew Haslam", :image => "http://farm1.static.flickr.com/134/379780428_6b73b0e854.jpg", :user => u)
Book.create(:isbn => "142992246X", :title => "Beneath the Book Tower", :author => "Steve Hamilton", :image => "http://ecx.images-amazon.com/images/I/51QZQGdqtbL._SX374_BO1,204,203,200_.jpg", :user => u)
Book.create(:isbn => "3764355123", :title => "Une Petite Maison", :author => "Le Corbusier", :image => "http://www.arteum.com/6067thickbox/magnet-une-petite-maison-collection-le-corbusier.jpg", :user => u)
Book.create(:isbn => "9635257961", :title => "The Great Gatsby", :author => "Francis Scott Fitzgerald", :image => "https://upload.wikimedia.org/wikipedia/en/thumb/b/b0/Gatsby_1925_jacket.gif/220px-Gatsby_1925_jacket.gif", :user => u)
