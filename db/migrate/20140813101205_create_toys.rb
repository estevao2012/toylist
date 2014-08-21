class CreateToys < ActiveRecord::Migration
  def change
    create_table :toys do |t|
      t.string :name
      t.text :description
      t.string :animal

      t.timestamps
    end
  end
end
