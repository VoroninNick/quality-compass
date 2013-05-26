class ArticleController < ApplicationController
  def index
    @news ||= Article.find_all_by_published(:t)
  end

  def show
    @new = Article.find_by_slug!(params[:id])
    @last_news = Article.last(4)
  end
end
