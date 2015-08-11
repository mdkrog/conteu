class AddCoverSpreadField < ActiveRecord::Migration
  def change
    add_column :issues, :cover_spread, :string, :after => :cover_image
  end
end
