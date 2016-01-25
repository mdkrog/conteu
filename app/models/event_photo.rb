class EventPhoto < ActiveRecord::Base
  belongs_to :event
  mount_uploader :photo, ImageUploader

  default_scope { order(order: :asc) }
end
