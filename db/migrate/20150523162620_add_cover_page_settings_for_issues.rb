class AddCoverPageSettingsForIssues < ActiveRecord::Migration
  def change
    add_column :issues, :cover_image, :string, :after => :poster_image
    add_column :issues, :color_scheme, :integer, default: 0, :after => :cover_image
  end
end
