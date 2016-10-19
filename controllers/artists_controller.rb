require 'pry-byebug'
require_relative '../models/artist'
require_relative '../models/album'

get '/artists' do
  @artists = Artist.all()
  erb( :'artists/index' )
end

get '/artists/new' do
erb( :'artists/new' )
end

post '/artists' do
@artist = Artist.new( params )
@artist.save()
erb( :'artists/create' )
  end

  get '/artists/:id' do
    @artist = Artist.find( params[:id] )
    erb( :'artists/show')
  end

  get '/artists/:id/edit' do
    @artist = Artist.find( params[:id] )
    erb( :'artists/edit' )
  end

  put '/artists/:id' do
    @artist = Artist.update( params )
    redirect to("/artists/#{params[:id]}")
  end

  delete '/artists/:id' do
    Artist.destroy(params[:id])
    redirect to('/artists')
  end


