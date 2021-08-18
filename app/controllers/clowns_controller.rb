class ClownsController < ApplicationController
  def index
    @clowns = Clown.all
  end

  def show
    @clown = Clown.find(params[:id])
  end

  def new
    @clown = Clown.new
  end

  def create
    @clown = Clown.new(params[:id])

    if @clown.save
      redirect_to @clown, notice: 'clown was successfully created.'
    else
      render :new
    end
  end
end
