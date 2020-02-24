class GenresController < ApplicationController
    def index #list of drinks
        @genres = Genre.all
    end
  
    def show 
        @genre = Genre.find(params[:id])
        
    end
  
    def new #display form for create a new record
        @genre = Genre.new
    end
  
    def create #save new record when clicked submit on "new"
        @genre = Genre.new(allowed_params(:name))
        
        if @genre.save
            redirect_to @genre
        else
            redender "new"
        end
    end
  
    def edit #display form for the existing record
        @genre = Genre.find(params[:id])
    end
  
    def update #update the existing modified record
        @genre = Genre.find(params[:id])
  
        if @genre.update_attributes(allowed_params(:name))
            redirect_to @genre
        else
            redender "new"
        end
    end
  
    def destroy
        @genre = Genre.find(params[:id])
        @genre.destroy
        redirect_to genres_path
    end
  
    private
    def allowed_params(*args)
        params.require(:genre).permit(*args)
    end
end
