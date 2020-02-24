class GenresController < ApplicationController
  def new
    @genre = Genre.new
  end

  def create
    genre = Genre.create(genre_param)

    redirect_to genre
  end

  def index
    @genres = Genre.all
  end

  def show
    @genre = Genre.find(params[:id])
  end

  def edit
    @genre = Genre.find(params[:id])
  end

  def update
    genre = Genre.find(params[:id])
    genre.update(genre_param)
    redirect_to genre
  end

  private

  def genre_param
    params.require(:genre).permit(:name)
  end
end
