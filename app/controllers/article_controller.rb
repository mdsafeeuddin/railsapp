class ArticleController < ApplicationController
  def create
    if request.post?
      article = Article.create(title: params[:title], author: params[:author], body: params[:body], url: params[:url])
      redirect_to "/article/view/" + article.id.to_s
    end
  end

  def view
    @article = Article.find_by(id: params[:id])
  end

  def show
    @articles = Article.all
  end

  def update
    if request.post?
      article = Article.find_by(id: params[:id])
      article.update(title: params[:title], author: params[:author], body: params[:body], url: params[:url])
      redirect_to "/article/view/" + article.id.to_s
    else
      @article = Article.find_by(id: params[:id])
    end
  end

  def delete
    article = Article.find_by(id: params[:id])
    article.destroy
    redirect_to "/article/show"
  end
end
