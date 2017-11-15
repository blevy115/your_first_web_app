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
  @fav_links = ['google.com', 'reddit.com', 'youtube.com', 'facebook.com', 'netflix.com']
  erb :favourites
end

get '/' do
  redirect to ('/home')
end

get '/gallery' do
  redirect to ('/portfolio')
end
