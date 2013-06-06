class ArticleController < ApplicationController
  def index
    @news ||= Article.find_all_by_published(:t)
    @subscribe = Subscriber.new
  end

  def show
    @new = Article.find_by_slug!(params[:id])
    @last_news = Article.last(4)
    @subscribe = Subscriber.new
  end
end
