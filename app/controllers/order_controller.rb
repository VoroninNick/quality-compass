class OrderController < ApplicationController
  def new
    @order = Order.new
  end

  def create
    @order = Order.new(params[:message])

    if @order.valid?
      NotificationsMailer.new_order(@order).deliver
      redirect_to(root_path, :notice => 'Message was successfully sent.')
    else
      flash.now.alert = 'Please fill all fields.'
      render :new
    end
  end
end
