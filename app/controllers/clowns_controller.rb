class ClownsController < ApplicationController
  def index
    @clowns = Clown.all
  end
  def show
    @clown = Clown.find(params[:id])
  end
end
