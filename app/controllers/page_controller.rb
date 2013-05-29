class PageController < ApplicationController
  def index
    @order = Order.new
    @last_news ||= Article.last(4)
    @slides ||= Slide.find(:all, :limit => 5)
  end

  def about
  end

  def contact
  	@order = Order.new
  end
end
