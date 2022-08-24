class BookingsController < ApplicationController
  def show
    @booking = current_user.bookings.last
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @computer = Computer.find(params[:computer_id])
    @booking.computer = @computer
    if @booking.save!
      redirect_to computer_booking_path(@computer, @booking)
    else
      render "computers/show", status: :unprocessable_entity
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
