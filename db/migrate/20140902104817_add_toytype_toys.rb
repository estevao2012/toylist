class AddToytypeToys < ActiveRecord::Migration
  def change
  	add_reference :toys, :toytype, index: true
  end
end
