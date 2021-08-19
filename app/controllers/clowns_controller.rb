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
    @clown = Clown.new(clown_params)
    @clown.user = current_user

    if @clown.save
      redirect_to clown_path(@clown), notice: 'Mime was successfully created.'
    else
      render :new
    end
  end

  def edit
    @clown = Clown.find(params[:id])
  end

  def update
    @clown = Clown.find(params[:id])
    if @clown.update(clown_params)
      redirect_to @clown, notice: 'Mime was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @clown = Clown.find(params[:id])
    @clown.destroy
    redirect_to clowns_path
  end

  private

  def clown_params
    params.require(:clown).permit(:name, :years_of_experience, :gender, :rental_duration, :image_url, :photo)
  end

end
