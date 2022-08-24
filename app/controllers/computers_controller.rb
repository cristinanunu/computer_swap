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
    @computer = Computer.create(computer_params)
    @computer.user = current_user
    redirect_to computers_path
  end

  def edit
    @computer = Computer.find(params[:id])
  end

  def update
    @computer = Computer.find(params[:id])
    respond_to do |format|
      if @computer.update(computer_params)
        format.html { redirect_to computer_url(@computer), notice: "Computer was successfully updated." }
        format.json { render :show, status: :ok, location: @computer }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @computer.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def computer_params
    params.require(:computer).permit(:brand, :category, :screen_size, :price, photos: [])
  end
end
