require 'sinatra'
require 'sinatra/reloader'

get '/' do
  redirect '/index.html'
end

get '/about-us' do
  redirect '/index.html#about-us'
end

get '/contact' do
  redirect '/index.html'
end

get '/staff' do
  redirect '/index.html#team'
end
