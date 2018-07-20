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
post '/climatequiz' do
    answer = params.values
    @total = 0 
    answer.each do |ans|
      @total += ans.to_i
      puts @total
  end
  if @total < 21
     @quizresult = "You are a reusable water bottle! A lot of people don't use you because you're not as convenient as wasteful plastic water bottles. You're helpful and useful but not many people realize that."
     elsif @total < 45
     @quizresult = "You are recycling! You're the big blue bin that people stare at when they have something they don’t know if they should recycle or not, and end up putting in the trash. But you're easy to spot and very helpful!"
     elsif @total < 65
     @quizresult = "You are turning off the water while brushing your teeth! People always forget about you, sadly. But they would be better off if they didn't!"
     elsif @total < 85
     @quizresult = "You are turning off the lights when leaving an empty room! People don't realize how much energy you are using when you are left on."
     elsif @total >= 85
     @quizresult = "You are a shorter shower! Sometimes people forget how long they have been in the shower while performing concerts."
  end
  erb :climatequiz
end 
end 