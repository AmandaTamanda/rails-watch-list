class ListsController < ApplicationController
  def index
    @list = Movie.all
  end
end
