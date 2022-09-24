class Admin::GenresController < ApplicationController
  def index
    @index_admin_genres = Genre.all
  end

  def create
  end

  def edit
    @edit_admin_genres = Genre.find(params[:id])
  end

  def update
  end
end

  private
  def admin_genres_params
    params.require(:genre).permit(:name)
  end
