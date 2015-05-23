class AddColorSchemeForArticle < ActiveRecord::Migration
  def change
    add_column :articles, :color_scheme, :integer, default: 0
  end
end
