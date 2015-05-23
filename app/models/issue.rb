class Issue < ActiveRecord::Base
  has_many :articles
  
  validates_presence_of :title

  mount_uploader :poster_image, ImageUploader
  mount_uploader :cover_image, ImageUploader

  COLOR_SCHEMES = [ :dark, :light ]
  enum color_scheme: COLOR_SCHEMES

  scope :all_published, -> { where('release_date <= ?', Date.today) }

  def published?
    release_date <= Date.today
  end

  def self.latest_issue
    Issue.all_published.order('issue_number desc').first
  end
end
