require_relative './user'

user = User.new({ :username => 'maxd924', :email => 'maxd924@yahoo.com', :password => 'rusty'})
user.hash_password
user.save


photo = Photo.new({ :title => 'Camo Cup', :url => 'http://www.parteaz.co.uk/2135-2880-large/army-camouflage-party-cups.jpg', :user_id => 1})
photo.save

photo_two = Photo.new({ :title => 'Donkey', :url => 'https://yt3.ggpht.com/-ftMaOzF43WA/AAAAAAAAAAI/AAAAAAAAAAA/rks3UOR9mGc/s900-c-k-no/photo.jpg', :user_id => 1})