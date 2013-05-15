class PageController < ApplicationController
  def index
    @order = Order.new
    @last_news ||= Article.last(4)
  end

  def about
  end

  def contact
  end
end
