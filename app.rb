require 'sinatra'
require "sinatra/reloader" if development?

get '/' do 
    "Hello!"
end

get '/secret' do
  'secret message!!!!!!!'
end



get '/cat' do
  erb(:index)

end





