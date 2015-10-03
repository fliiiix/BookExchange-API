class User
  include DataMapper::Resource

  property :id,         Serial
  property :username,   String
  property :mail,       String

end


class Book
  include DataMapper::Resource

  property :id,         Serial
  property :isbn,       String #isbn 13
  property :title,      String
  property :author,     String
  property :qualitiy,   Enum[ :new, :used, :broken ], :default => :used
  property :status,     Enum[ :free, :borrow, :sell ], :default => :free
  property :price,      Float
  property :prixFix,    Boolean
  property :away,       Boolean
  property :deleted,    Boolean
end


DataMapper.finalize
DataMapper.auto_migrate!
