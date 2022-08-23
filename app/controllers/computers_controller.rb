class ComputersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @computers = Computer.all
  end

  def show
    @computer = Computer.find(params[:id])
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
