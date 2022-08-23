class ComputersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

  def index
    @computers = Computer.all
  end

  def show
    @computer = Computer.find(params[:id])
  end

end
