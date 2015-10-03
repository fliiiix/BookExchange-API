require "sinatra"
require "json"
require "data_mapper"

configure do
  set :views, Proc.new { File.join(root, "../views") }
  set :public_folder, Proc.new { File.join(root, "../public") }

  
  DataMapper::Model.raise_on_save_failure = true
end

configure :development do
  DataMapper.setup(:default, 'mysql://localhost/books')
end

configure :production do
  db = JSON.parse(ENV['VCAP_SERVICES'])['mariadb'][0]['credentials']['database_uri']
  DataMapper.setup(:default, db)
end

require_relative "../model/main"

require_relative "user"
require_relative "book"

get "/" do
	erb :index
end
