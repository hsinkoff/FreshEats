class AddFruitsAndVeggiesToStores < ActiveRecord::Migration
  def change
  	add_column :stores, :fruits, :text, array: true, default: []
  	add_column :stores, :veggies, :text, array: true, default: []
  end
end
