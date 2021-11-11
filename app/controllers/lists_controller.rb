class ListsController < ApplicationController
  # Get movies to movie#index
  def index
    @lists = List.all
  end

  #Get movies to movies#show
  def show
    @lists = List.find(params[:id])
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(movie_params)
    @list.save
    redirect_to lists_path
  end


  # Show movies from particular list

  private

  def movie_params
    params.require(:list).permit(:name)
  end
end
