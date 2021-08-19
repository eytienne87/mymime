class BookingsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_clown_id_and_user_id, except: [ :show, :destroy, :accept, :reject]
  before_action :set_booking, only: [ :show, :destroy, :edit, :update, :accept, :reject ]

  def index
    # TODO: Implement logic to accept or deny a booking
    # If the user is the owner of the Mime, SHOW option to accept a booking
    # if the user is not the owner of the Mime, SHOW status of Accepted or not.
    # @bookings = Booking.all
    # @bookings = Booking.where(clown: @clown)
    @bookings = Booking.where(user_id: current_user)
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

  def accept
    @booking.accept!
    @booking.save
    redirect_to profile_path
  end

  def reject
    @booking.reject!
    @booking.save
    redirect_to profile_path
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
