module ApplicationHelper
  def current_order
    current_order=current_user.orders.last
  end
end
