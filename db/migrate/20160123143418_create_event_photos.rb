class CreateEventPhotos < ActiveRecord::Migration
  def change
    create_table :event_photos do |t|
      t.integer :event_id
      t.integer :order
      t.string :photo
      t.string :caption

      t.timestamps
    end
  end
end
