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
  post '/climatequiz' do 
    answers = params.values 
    @total = 0 
    answers.each do |answer|
      @total += answer.to_i 
    end 
    puts @total 
    
     if @total < 7  
      @answer = "Congrats, you got whatever"
      
     elsif @total < 13
      @answer = "Congrats you got this too"
      
      elsif @total == 19 
      @answer = "Congrats 3"
      
      elsif @total < 25 
      @answer = "Congrats 4"
      
      elsif @total <31
      @answer = "Congrats 5"
      
      elsif @total <37 
      @anwser = "Congrats 6"
    end 
   erb :climatequiz
  end 
  
  get '/northamerica' do
    erb :northamerica
  end 
  get '/asia' do
    erb :asia
  end 
 get '/europe' do 
   erb :europe
 end 
 get '/antarctica' do
   erb :antarctica
 end 
 get '/australia' do
   erb :australia
 end 
 get '/resources' do 
   erb :resources
end 
get '/southwest' do 
  erb :southwest
end 
end 