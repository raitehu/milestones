class BlogsController < ApplicationController
  before_action :move_to_index, except: :index
  def index
    @article = Article.all.order("id DESC")
  end

  def new
    @article = Article.new()
  end

  def create
    @article = Article.create(blog_params)
    @article.save
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    @article.update(blog_params) if article.user_id === current_user.id
  end

  def destroy
    article = Article.find(params[:id])
    article.destroy if article.user_id === current_user.id
  end

  private
  def blog_params
    params.require(@article).permit(:title, :image, :content)
  end

  private
  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end
end
