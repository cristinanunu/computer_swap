class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @computers = Computer.all
  end

end
