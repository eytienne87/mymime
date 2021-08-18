class BookingsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_clown_id_and_user_id, except: [ :show, :destroy ]
  before_action :set_booking, only: [ :show, :destroy, :edit, :update ]

  def index
    # TODO: Change the below line, maybe Booking.where(...)???
    # @bookings = Booking.all
    @bookings = Booking.where(clown: @clown)
  end

  def new
    @booking = Booking.new
  end

  def create
    # TO ASK: Set_params is un
    @booking = Booking.new(set_params)
    @booking.user = @user
    @booking.clown = @clown
    if @booking.save
      redirect_to booking_path(@booking)
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @booking.update(set_params)
      redirect_to booking_path(@booking)
    else
      render :edit
    end
  end

  def destroy
    @booking.destroy
    redirect_to clowns_path
  end

  private

  def set_clown_id_and_user_id
    @clown = Clown.find(params[:clown_id])
    @user = current_user
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def set_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
