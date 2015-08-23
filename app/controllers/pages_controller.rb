class PagesController < ApplicationController
  before_action :require_login, only: [:admin]
  def home
    @issue = Issue.latest_issue
    render layout: 'frontpage'
  end

  def subscribe
  end
  
  def admin
    @issues = Issue.all.includes(:articles).order(issue_number: :asc)
    @categories = Category.all.order(name: :asc)
  end
end
