require "sinatra"
require "data_mapper"

configure do
  DataMapper.setup(:default, 'mysql://localhost/books')
end

require_relative "../model/main"

require_relative "user"
require_relative "book"

get "/" do
	erb :index
end
