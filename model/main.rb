class User
  include DataMapper::Resource

  property :id,         Serial
  property :username,   String
  property :mail,       String

end


class Book
  include DataMapper::Resource

  property :id,         Serial
  property :isbn,       String
  property :title,      String
  property :author,     String
  property :qualitiy,   Enum[ :new, :used, :broken ], :default => :used
  property :status,     Enum[ :free, :borrow, :sell ], :default => :free
  property :away,       Boolean
  property :deleted,    Boolean
end


DataMapper.finalize
DataMapper.auto_migrate!
