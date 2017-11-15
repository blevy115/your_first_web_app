require 'sinatra'


get '/home' do
   erb :index
end

get '/portfolio' do
  erb :gallery
end

get '/about_me' do
  @skills = ['git', 'HTML', 'CSS', 'Ruby']
  @interests = ['sports', 'books', 'video games', 'tv shows']
  erb :about_me
end


get '/favourites' do
  @fav_links = {'Google'=>'https://www.google.ca', 'Reddit'=>'https://www.reddit.com/', 'Youtube'=>'https://www.youtube.com/', 'Facebook'=>'https://www.facebook.com/', 'Netflix'=>'https://www.netflix.com'}
  erb :favourites
end

get '/' do
  redirect to ('/home')
end

get '/gallery' do
  redirect to ('/portfolio')
end
