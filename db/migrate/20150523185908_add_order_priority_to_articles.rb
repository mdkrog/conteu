class AddOrderPriorityToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :priority_order, :integer, default: 0
  end
end
