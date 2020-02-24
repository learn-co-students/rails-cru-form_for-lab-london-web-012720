class ArtistsController < ApplicationController



  def index
    @artists = Artist.all
  end

  def show
    @artist = Artist.find(params[:id])
  end

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.new(artist_params)
    @artist.save
    redirect_to artist_path(@artist)
  end

  def edit
    @artist = Artist.find(params[:id])
  end

  def update
    @artist = Artist.find(params[:id])
    @artist.update(artist_params)
    redirect_to artist_path(@artist)
  end

  private

  def artist_params
    params.require(:artist).permit(:name, :bio)
  end 

end
 
#   before_action(:set_artist, only: %i[show edit update destroy])


#   def index
#     @artists = Artist.all
#   end

#   def show;end
#     #@artist = Artist.find(params[:id])

#   def new
#       @artist = Artist.new
#   end
  
#   def edit; end
#   #@artist = Artist.find(params[:id])

#   def create
#     artist = Artist.create(artist_params)
   
#   redirect_to artist
#   end
  


#   def update
#     @artist.update(artist_params)
#   redirect_to @artist
#   end

#   def destroy
#       @artist.destroy

#   redirect_to artists_path
#   end

# private

#   def set_artist
#     @artist = Artist.find(params[:id])
#   end
 
#   def artist_params
#     params.require(:artist).permit(:name, :bio)
#   end

# end
 