class IssuesController < ApplicationController
  before_action :require_login, except: [:show, :index]
  before_action :set_issue, only: [:show, :edit, :update, :destroy, :preview]

  def index
    @issues = Issue.all.order(issue_number: :desc)
    @featured_issue = @issues.last
  end

  def show
    @articles = @issue.articles.order(priority_order: :asc)
    if !@issue.published? && !signed_in?
      redirect_to issues_path
    end
  end

  def new
    @issue = Issue.new
  end

  def edit
  end

  def create
    @issue = Issue.new(issue_params)
    if @issue.save
      redirect_to @issue, notice: 'Issue was successfully created.'
    else
      render :new
    end
  end

  def update
    if @issue.update(issue_params)
      redirect_to @issue, notice: 'Issue was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @issue.destroy
    respond_to do |format|
      format.html { redirect_to admin_path, notice: 'Issue was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def preview
    render layout: 'frontpage'
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_issue
    @issue = Issue.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def issue_params
    params.require(:issue).permit(:title, :release_date, :issue_number, :poster_image, :cover_image, :cover_spread, :color_scheme)
  end
end
