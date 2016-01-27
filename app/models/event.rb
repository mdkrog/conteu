class Event < ActiveRecord::Base
  has_many :event_photos
  mount_uploader :poster_image, ImageUploader

  validates_presence_of :name

  accepts_nested_attributes_for :event_photos, reject_if: :all_blank, allow_destroy: true
end
