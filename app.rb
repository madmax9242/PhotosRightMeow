require "sinatra"
require "sinatra/reloader"
require_relative "./user.rb"

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
	# Create an instance of a user with the new data posted
	user = User.new(:username => params[:username], :email => params[:email], :password => params[:password])
	user.hash_password
	user.save

	# We need to set a session variable or they will have to log in when going to the index page, which 
	# looks like a bug
	session[:user_id] = user.id

	# For our purposes, they are now authorized to see our protected content
	redirect('/profile')
	
end 

post '/upload' do 

end

get '/logout' do 

end

post '/login' do
	# Get form params
	username = params['username']
	password = params['password']

	# Get an instance of the user with this username 
	user = User.find_by(:username => username)

	# If a user by this user_name was found and we can authenticate them
	if user && user.authenticate(password)
		# This is a valid user in our database
		# Keep track of the user by setting a session variable called 'user_id'
		session[:user_id] = user.id
		redirect('/profile')
	else 
		# Not a valid user
		redirect('/')
	end
end 



