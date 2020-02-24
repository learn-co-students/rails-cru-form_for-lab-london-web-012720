class SongsController < ApplicationController
    before_action :set_song, only: [:show, :edit, :update, :destroy]
    
    def index
      @songs = Song.all
    end

 def show
 
 end

 def new 
@song = Song.new
@artists = Artist.all.map {|a|[a.name, a.id]}
@genres = Genre.all.map {|g|[g.name, g.id]}
 end
 
 def create 
@song = Song.create(allowed_params)

 redirect_to song_path(@song)
end

 def edit 
 end

 def update
  @song.update(allowed_params)
    redirect_to song_path(@song)
 end

 def destroy

  @song.destroy
  redirect_to songs_path

 end






    private 
    def set_song
      @song = Song.find(params[:id])
      end

      def allowed_params
       params.require(:song).permit(:name, :artist_id, :genre_id)
        end
    

end
