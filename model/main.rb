class User
  include DataMapper::Resource

  property :id,         Serial
end


class Book
  include DataMapper::Resource

  property :id,         Serial
end


DataMapper.finalize
DataMapper.auto_migrate!
