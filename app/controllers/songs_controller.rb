class SongsController < ApplicationController
    def index #list of drinks
        @songs = Song.all
    end
    
    def show 
        @song = Song.find(params[:id])
    end

    def new #display form for create a new record
        @song = Song.new
    end


    def create #save new record when clicked submit on "new"
        @song = Song.new(allowed_params(:name,:artist_id, :genre_id))
  
        if @song.save
            redirect_to @song
        else
            redender "new"
        end
    end

    def edit #display form for the existing record
        @song = Song.find(params[:id])
    end
  
    def update #update the existing modified record
        @song = Song.find(params[:id])
  
        if @song.update_attributes(allowed_params(:name))
            redirect_to @song
        else
            redender "new"
        end
    end

    private
    def allowed_params(*args)
        params.require(:song).permit(*args)
    end
end
