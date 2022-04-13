class AdminController < ApplicationController

  def index
    redirect_to root_path unless user_signed_in? &&   user_signed_in? && current_user.admin? 
  end

  def concretar_orden
    order = Order.find_by(id: params[:id])
    order.status=2
    order.save
    redirect_to admin_index_path
  end

  def products
    redirect_to root_path unless user_signed_in? &&  current_user.admin?
    @products= Product.all
  end

  def orders
    redirect_to root_path unless user_signed_in? &&  current_user.admin?
    @orders = Order.all
  end


end
