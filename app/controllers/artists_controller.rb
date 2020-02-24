class ArtistsController < ApplicationController
    def index #list of drinks
        @artists = Artist.all
    end
  
    def show 
        @artist = Artist.find(params[:id])
    end
  
    def new #display form for create a new record
        @artist = Artist.new
    end
  
    def create #save new record when clicked submit on "new"
        @artist = Artist.new(allowed_params(:name,:bio))
  
        if @artist.save
            redirect_to @artist
        else
            redender "new"
        end
    end
  
    def edit #display form for the existing record
        @artist = Artist.find(params[:id])
    end
  
    def update #update the existing modified record
        @artist = Artist.find(params[:id])
  
        if @artist.update_attributes(allowed_params(:name,:bio))
            redirect_to @artist
        else
            redender "new"
        end
    end
  
    def destroy
        @artist = Artist.find(params[:id])
        @artist.destroy
        redirect_to artists_path
    end
  
    private
    def allowed_params(*args)
        params.require(:artist).permit(*args)
    end
end
