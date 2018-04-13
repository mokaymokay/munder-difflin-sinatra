require 'sinatra'
require 'sinatra/reloader'
require_relative 'team'

get '/' do
  erb :index, :layout => :home_layout
end

get '/about' do
  erb :about_us
end

get '/testimonials' do
  erb :testimonials
end

get '/team' do
  erb :group, :layout => :team_layout
end

get '/team/:name' do
  if params[:name] == "dwight"
    @dwight = Staff.new('Dwight Schrute', '/images/staff/dwight.jpg', 'Assistant (to the) Regional Manager', 'Hard-working, Alpha male. Jackhammer. Merciless. Insatiable.')
    erb :dwight, :layout => :team_layout
  elsif params[:name] == "jim"
    @jim = Staff.new('Jim Halpert', '/images/staff/jim.jpg', 'Salesman', 'Office Prankster')
    erb :jim, :layout => :team_layout
  elsif params[:name] == "andy"
    @andy = Staff.new('Andy Bernard', '/images/staff/andy.jpg', 'Salesman', 'Nard Dog. Proud Cornell Graduate.')
    erb :andy, :layout => :team_layout
  elsif params[:name] == "michael"
    @michael = Staff.new('Michael Scott', '/images/staff/michael.jpg', 'Regional Manager', "World's Best Boss")
    erb :michael, :layout => :team_layout
  else
    erb :group, :layout => :team_layout
  end
end
