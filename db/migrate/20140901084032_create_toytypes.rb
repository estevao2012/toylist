class CreateToytypes < ActiveRecord::Migration
  def change
    create_table :toytypes do |t|
      t.string :toytype
      t.string :description

      t.timestamps
    end
  end
end
