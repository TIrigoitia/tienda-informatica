class AdminController < ApplicationController
  def index
  end
  
  def orders
    @orders = Order.all
    
  end
end
