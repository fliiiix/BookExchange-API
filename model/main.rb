class User
  include DataMapper::Resource

  property :id,         Serial
  property :username,   String, :unique => true
  property :password,   String
  property :mail,       String, :unique => true
  property :plz,        Integer

  has n, :tokens
  has n, :books
end

class Token
  include DataMapper::Resource

  property :id,         Serial
  property :token,      String

  belongs_to :user
end


class Book
  include DataMapper::Resource

  property :id,         Serial
  property :isbn,       String #isbn 13
  property :title,      String
  property :author,     String
  property :image,      String
  property :qualitiy,   Enum[ :new, :used, :broken ], :default => :used
  property :status,     Enum[ :free, :borrow, :sell ], :default => :free
  property :price,      Float
  property :prixFix,    Boolean
  property :away,       Boolean
  property :deleted,    Boolean

  belongs_to :user
end


DataMapper.finalize
DataMapper.auto_migrate!
