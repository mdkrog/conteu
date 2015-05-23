class ArticlesController < ApplicationController
  before_action :require_login, except: [:show]
  before_action :set_article, only: [:show, :edit, :update, :destroy]

  def index
    @articles = Article.all.order(priority_order: :asc)
  end

  def show
    if !@article.published? && !signed_in?
      redirect_to articles_url
    end
  end

  def new
    @article = Article.new
    @issues = Issue.all.order(issue_number: :asc)
    @categories = Category.all.order(name: :asc)
  end

  def edit
    @issues = Issue.all.order(issue_number: :asc)
    @categories = Category.all.order(name: :asc)
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      redirect_to @article, notice: 'Article was successfully created.'
    else
      render :new
    end
  end

  def update
    if @article.update(article_params)
      redirect_to @article, notice: 'Article was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @article.destroy
    respond_to do |format|
      format.html { redirect_to articles_url, notice: 'Article was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_article
    @article = Article.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def article_params
    params.require(:article).permit(:title, :content, :published, :poster_image, :author, :category_id, :issue_id, :color_scheme, :priority_order)
  end
end
