require "sinatra"
require "sinatra/reloader"

get "/" do 
	# @photo_array = []
	# for (Photo.count) do |url|
	# 	@photo_array << (Photo.find(url))
	# end
	
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

