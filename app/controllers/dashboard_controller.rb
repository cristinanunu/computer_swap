class DashboardController < ApplicationController

  def index
    @bookings = Booking.all
    @computers = Computer.all
  end


  def show
    @booking = current_user.bookings.last
    @bookings = current_user.bookings
    @computers = Computer.all
    @computer = Computer.last
  end


end
