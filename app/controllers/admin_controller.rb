class AdminController < ApplicationController

  def index
    redirect_to root_path unless current_user.admin?
  end
  
  def orders
    @orders = Order.where(status: 1)
  end
end
