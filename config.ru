require './controller/main.rb'
use Rack::Deflater
run Sinatra::Application
