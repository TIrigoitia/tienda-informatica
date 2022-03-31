class CartController < ApplicationController
  def show
    if user_signed_in? && current_user.client?
      @order_items = current_order.order_items
    else
      redirect_to new_user_session_path, alert: "Debes iniciar sesion para ver tu carrito "
    end

  end

  def confirmar
    current_order.status=1
    current_order.save
    current_order= current_user.orders.new(status: 0, user_id: current_user.id)
    current_order.save
  end

end
