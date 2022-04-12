class AdminController < ApplicationController

  def index
    redirect_to root_path unless current_user.admin?
    @orders = Order.all
  end

  def concretar_orden
    order = Order.find_by(id: params[:id])
    order.status=2
    order.save
    redirect_to admin_index_path
  end


end
