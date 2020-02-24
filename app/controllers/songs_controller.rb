class SongsController < ApplicationController
  def new
    @song = Song.new
    @genre = Genre.new
    @artist = Artist.new
  end

  def create
    song = Song.create(song_param)

    redirect_to song
  end

  def index
    @songs = Song.all
  end

  def show
    @song = Song.find(params[:id])
  end

  def edit
    @song = Song.find(params[:id])
    @genre = Genre.new
    @artist = Artist.new
  end

  def update
    song = Song.find(params[:id])
    song.update(song_param)
    redirect_to song
  end

  private

  def song_param
    params.require(:song).permit(:name, :artist_id, :genre_id)
  end
end
