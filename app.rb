require 'sinatra'
require 'shotgun'

get '/' do
  "hello!"
end

get '/secret' do
  "<h1>🕵️‍♂️ SECRET 🕵️‍♀️</h1>"
end

get '/notsecret' do
  "<h1>📣 NOT SECRET 📣</h1>"
end

get '/random-cat' do
  @name = ["Amigo", "Oscar", "Viking"].sample
  erb(:index)
end

get '/named-cat' do
  p params
  @name = params[:name]
  erb(:index)
end
