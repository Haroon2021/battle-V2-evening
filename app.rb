require 'sinatra'
require "sinatra/reloader" if development?

get '/' do 
    "Hello!"
end

get '/secret' do
  'secret message!!!!!!!'
end

get '/random-cat' do
  @name = ["Amigo", "Misty", "Almond"].sample
  erb(:index)

end

post '/named-cat' do
  # p params
  @name = params[:name]
  erb (:index)

end


get '/named-cat1' do
 
  erb (:cat_form)
  
end


