require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')
require_relative('./models/album')
require_relative('./models/artist')

# albums
post '/albums:id' do
  Album.update(params)
end

get '/albums' do
  @albums = Album.all()
  erb(:index)
end

  get '/albums/new' do
    erb(:new)
  end

  get 'albums/:id/edit' do
    @album = Album.find(params[:id])
    erb(:edit)
  end

  get '/albums/:id' do
    @album = Album.find(params[:id])
    erb(:show)
  end

    post '/albums' do
      @album = Album.new(params)
      @album.save()
      erb(:create)
    end

  post '/albums/:id/delete' do
    Album.delete(params[:id])
  end

# artist

post '/artists:id' do
  Artist.update(params)
end

get '/artists' do
  @artists = Artist.all()
  erb(:index)
end

  get '/artists/new' do
    erb(:new)
  end

  get 'artists/:id/edit' do
    @artist = Artist.find(params[:id])
    erb(:edit)
  end

  get '/artists/:id' do
    @artist = Artist.find(params[:id])
    erb(:show)
  end

    post '/artists' do
      @artist = Artist.new(params)
      @artist.save()
      erb(:create)
    end

  post '/artists/:id/delete' do
    Artist.delete(params[:id])
  end