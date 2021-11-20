class ListsController < ApplicationController
  before_action :set_list, only: [:show, :edit, :destroy]
  # Get movies to movie#index
  def index
    @lists = List.all
  end

  #Get movies to lists#show
  def show
    @movies = Movie.all
    # @bookmark = Bookmark.find(params[:id])
  end

  # GET /lists/new
  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    if @list.save
      redirect_to lists_path(@list)
    else
      render :new
    end
  end

  def edit
    @movies = Movie.all
    @movie = Movie.find(params[:id])
  end

  def destroy
    @list.destroy
    redirect_to lists_path
  end

  # Show movies from particular list

  private

  def list_params
    params.require(:list).permit(:name)
  end

  def set_list
    @list = List.find(params[:id])
  end
end
