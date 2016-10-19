require 'sinatra'
require 'sinatra/contrib/all'
require 'pry-byebug'
require_relative './controllers/artists_controller'
require_relative './controllers/albums_controller'

get '/library' do
  @artists = Artist.all()
  @albums = Album.all()
  erb( :'god/index' )
end
