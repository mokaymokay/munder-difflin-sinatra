require 'sinatra'
require 'sinatra/reloader'
require_relative 'team'

set :port, 8080
set :static, true
set :public_folder, "public" # default
set :views, "views" # default

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
  case params[:name]
    when "dwight"
      @staff = Staff.new('Dwight Schrute', '/images/staff/dwight.jpg', 'Assistant (to the) Regional Manager', 'Hard-working, Alpha male. Jackhammer. Merciless. Insatiable.')
      erb :staff, :layout => :team_layout
    when "jim"
      @staff = Staff.new('Jim Halpert', '/images/staff/jim.jpg', 'Salesman', 'Office Prankster')
      erb :staff, :layout => :team_layout
    when "andy"
      @staff = Staff.new('Andy Bernard', '/images/staff/andy.jpg', 'Salesman', 'Nard Dog. Proud Cornell Graduate.')
      erb :staff, :layout => :team_layout
    when "michael"
      @staff = Staff.new('Michael Scott', '/images/staff/michael.jpg', 'Regional Manager', "World's Best Boss")
      erb :staff, :layout => :team_layout
    else
      raise "That employee doesn't exist"
    end
end
