require 'sinatra'
require 'sinatra/reloader'

get '/' do
  erb :index
end

get '/about' do
  erb :about_us
end

get '/testimonials' do
  erb :testimonials
end

get '/team' do
  erb :team
end

get '/team/:name' do
  if params[:name] == "andy"
    erb :andy
  elsif params[:name] == "dwight"
    erb :dwight
  elsif params[:name] == "jim"
    erb :jim
  else
    erb :michael
  end
end
