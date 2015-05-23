class CreateIssues < ActiveRecord::Migration
  def change
    create_table :issues do |t|
      t.string :title
      t.integer :issue_number
      t.date :release_date
      t.string :poster_image

      t.timestamps
    end
  end
end
