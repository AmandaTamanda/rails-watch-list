class ListsController < ApplicationController
  def index
    @list = Movie.all
  end

  def show
    @list = List.find(params[:id])
  end
end
