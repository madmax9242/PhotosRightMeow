require "sinatra"
require "sinatra/reloader"

require_relative './user.rb'

get "/" do 
	# @photo_array = []
	# for (Photo.count) do |url|
	# 	@photo_array << (Photo.find(url))
	# end
	@image = Photo.find(1)
	@image_two = Photo.find(2)
	
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

