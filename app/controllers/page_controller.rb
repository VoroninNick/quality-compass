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

  # Dont use THIS!!!!
  def git
    if params[:branch] == 'pasha'
      exec('git checkout develop/build_2_0_by_pkorenev')
    elsif params[:branch] == 'vik'
      exec('git checkout server-master')
    end
  end
end
