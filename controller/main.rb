require "rack"
require "rack/contrib"

require "sinatra"
require 'sinatra/cross_origin'

require "tilt/erb"
require "json"
require "data_mapper"

use Rack::Session::Pool
use Rack::PostBodyContentTypeParser

configure do
  set :views, Proc.new { File.join(root, "../views") }
  set :public_folder, Proc.new { File.join(root, "../public") }

  #DataMapper::Model.raise_on_save_failure = true
  enable :cross_origin
end

configure :development do
  DataMapper.setup(:default, 'mysql://localhost/books')
end

configure :production do
  db = JSON.parse(ENV['VCAP_SERVICES'])['mariadb'][0]['credentials']['database_uri']
  DataMapper.setup(:default, db)
end

helpers do
  def token!
    t = Token.first(:token => request.env['HTTP_X_API'])
    p t
    if not t.nil?
      session['userid'] = t.user.id
    else
  	  halt 401, '{"status": 401, "message": "user is not authenticated" }'
  	end
  end
end


require_relative "../model/main"
require_relative "../model/fake"

require_relative "user"
require_relative "book"
require_relative "search"

# to allow cors
options "*" do
  response.headers["Allow"] = "HEAD,GET,PUT,POST,DELETE,OPTIONS"

  response.headers["Access-Control-Allow-Headers"] = "X-Requested-With, X-HTTP-Method-Override, Content-Type, Cache-Control, Accept"

  200
end

get "/" do
	erb :index
end
