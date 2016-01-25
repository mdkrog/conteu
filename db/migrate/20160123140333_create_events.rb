class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name, null: false
      t.string :venue
      t.date :date
      t.text :description

      t.timestamps
    end
  end
end
