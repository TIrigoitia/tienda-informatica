class AdminController < ApplicationController

  def index
    redirect_to root_path unless current_user.admin?
    @orders = Order.all
  end
  

end
