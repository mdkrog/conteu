class PagesController < ApplicationController
  before_action :require_login, only: [:admin]
  def home
    @issue = Issue.latest_issue
    render layout: 'frontpage'
  end
  def admin    
  end
end
