class AddKeywordsToToy < ActiveRecord::Migration
  def change
    add_column :toys, :keywords, :text
  end
end
