require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/' do 
    erb :climate
  end 
  
  get '/regionquiz' do 
    erb :region
  end
  

get '/northeast' do 
  erb :northeast
end 

get '/northwest' do 
  erb :northwest
end 

get '/midwest' do 
  erb :midwest
  end
get '/aboutus' do
  erb :aboutus
end 
get '/southamerica' do
  erb :southamerica 
end 
get '/africa' do
  erb :africa
end 
get '/greatplains' do
  erb :greatplains
end 
get '/southeast' do
  erb :southeast
end 
get '/climatequiz' do
  erb :climatequiz
end 
end 