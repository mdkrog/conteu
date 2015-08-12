class AddSnippetFieldsToArticle < ActiveRecord::Migration
  def change
    add_column :articles, :blurb, :string, :after => :author
  end
end
