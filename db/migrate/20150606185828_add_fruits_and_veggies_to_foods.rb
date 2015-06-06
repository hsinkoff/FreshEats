class AddFruitsAndVeggiesToFoods < ActiveRecord::Migration
  def change
  	add_column :foods, :fruits, :text, array: true, default: []
  	add_column :foods, :veggies, :text, array: true, default: []
  end
end
