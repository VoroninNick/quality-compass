class OrderController < ApplicationController
  def new
    @order = Order.new
  end

  def create
    @order = Order.new(params[:order])

    if @order.valid?
      NotificationsMailer.new_order(@order).deliver
      redirect_to(root_path)
      flash[:notice] = 'Message was successfully sent.'
    else
      flash[:notice] = 'Please fill all fields.'
      redirect_to(root_path)
    end
  end
end
