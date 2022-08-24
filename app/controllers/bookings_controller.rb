class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @computer = Computer.find(params[:computer_id])
    @booking.computer = @computer
    if @booking.save!
      redirect_to computers_path
    else
      render "computers/show", status: :unprocessable_entity
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
