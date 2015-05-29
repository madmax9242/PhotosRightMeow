require_relative './user'

user = User.new({ :username => 'nd905', :email => 'nickd924@yahoo.com', :password => 'tucker'})
user.hash_password
user.save



photo_two = Photo.new({ :title => 'Donkey', :url => 'https://yt3.ggpht.com/-ftMaOzF43WA/AAAAAAAAAAI/AAAAAAAAAAA/rks3UOR9mGc/s900-c-k-no/photo.jpg', :user_id => 1})
photo_two.save