require "sinatra"
require "sinatra/reloader"

get "/" do 
	erb :index
end	

get '/profile' do 
	erb :profile
end

post '/register' do 
	
end 

post '/upload' do 

end

get '/logout' do 

end

