class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end
  def show
    @article=Article.find(params[:id])
  end
  def new
    @article = Article.new

  end


  def create
    @article = Article.find(params[:id])
    @article.save
    redirect_to index.path
  end
  def find
    @article = Article.find(params[:id])
  end

end
