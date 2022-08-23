class ComputersController < ApplicationController
  def index
    @computers = Computer.all
  end

  def new
    @computer = Computer.new
  end

  def create
    @computer = Computer.new(computer_params)
    @computer.user = current_user
  end

  private

  def computer_params
    params.require(:computer).permit(:brand, :category, :screen_size, :price)
  end
end
