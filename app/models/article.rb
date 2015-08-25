class Article < ActiveRecord::Base
  extend FriendlyId
  friendly_id :title, use: [:slugged, :history]

  belongs_to :issue
  belongs_to :category

  validates_presence_of :title
  
  mount_uploader :poster_image, ImageUploader

  COLOR_SCHEMES = [ :dark, :light ]
  enum color_scheme: COLOR_SCHEMES
  
  scope :published, -> { where(published: true) }
end
