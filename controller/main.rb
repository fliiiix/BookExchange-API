require "sinatra"
require "data_mapper"

configure do
  set :views, Proc.new { File.join(root, "../views") }
  set :public_folder, Proc.new { File.join(root, "../public") }

  DataMapper.setup(:default, 'mysql://localhost/books')
end

require_relative "../model/main"

require_relative "user"
require_relative "book"

get "/" do
	erb :index
end
