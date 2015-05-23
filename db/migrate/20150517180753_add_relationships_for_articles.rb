class AddRelationshipsForArticles < ActiveRecord::Migration
  def change
    add_column :articles, :author, :string, after: :content
    add_reference :articles, :issue, index: true
    add_reference :articles, :category, index: true
  end
end
