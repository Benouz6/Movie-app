class ListsController < ApplicationController
  # Get movies to movie#index
  def index
    @lists = List.all
  end

  #Get movies to lists#show
  def show
    @list = List.find(params[:id])
    @movies = Movie.all
    # @bookmark = Bookmark.find(params[:id])
  end

  # GET /lists/new
  def new
    @list = List.new
  end

  def create
    @list = List.new(movie_params)
    @list.save
    redirect_to lists_path
  end

  def edit
    @movies = Movie.all
    @list = List.find(params[:id])
    @movie = Movie.find(params[:id])

  end

  # Show movies from particular list

  private

  def movie_params
    params.require(:list).permit(:name)
  end
end
