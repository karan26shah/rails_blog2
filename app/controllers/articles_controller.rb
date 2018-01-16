class ArticlesController < ApplicationController
 def index
    @articles = Article.all
  end
def show
    @article = Article.find(params[:id])
    @tags = Tag.all
end
def new
  @article = Article.new
end
def destroy
  @article = Article.find(params[:id])
  @article.destroy
 
  redirect_to articles_path
end
 def edit
  @article = Article.find(params[:id])
end
def create
  @article = Article.new(article_params)
 
  if @article.save
    redirect_to @article
  else
    render 'new'
  end
end
def add_tag
  @article = Article.find(params[:id])
  tag_id = params[:tag_id]
  ArticleTag.create! tag_id: tag_id, article_id: @article.id
  redirect_to article_path(@article)
end
def update
  @article = Article.find(params[:id])
 
  if @article.update(article_params)
    redirect_to @article
  else
    render 'edit'
  end
end
private
def article_params
    params.require(:article).permit(:title, :text)
end
end