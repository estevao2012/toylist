class AddPortraitToToys < ActiveRecord::Migration
  def change
    add_column :toys, :Portrait, :boolean
  end
end
