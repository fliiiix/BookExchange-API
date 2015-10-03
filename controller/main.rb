require "sinatra"

require_relative "user"
require_relative "book"

get "/" do
	erb :index
end
