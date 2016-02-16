class ArticlesController < ApplicationController
  def new 
    @article = Article.new
  end
  def create
    #render plain: params[:article].inspect
    @article = Article.new(articles_params)
    @article.save
    redirect_to articles_show(@articles)
  end
  private
  def articles_params
    params.require(:article).permit(:title,:description)
  end
  def show
    
  end
end