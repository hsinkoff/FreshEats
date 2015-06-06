class UpdateStoresToIncludeFruitsAndVeggies < ActiveRecord::Migration
  def change
  	remove_column :stores, :fruits, :text
  	remove_column :stores, :veggies, :text
  	add_column :stores, :apples, :boolean, :default => false
  	add_column :stores, :oranges, :boolean, :default => false
  	add_column :stores, :bananas, :boolean, :default => false
  	add_column :stores, :grapes, :boolean, :default => false
  	add_column :stores, :other_fruits, :boolean, :default => false
  	add_column :stores, :lettuce, :boolean, :default => false
  	add_column :stores, :carrots, :boolean, :default => false
  	add_column :stores, :onions, :boolean, :default => false
  	add_column :stores, :potatoes, :boolean, :default => false
  	add_column :stores, :other_vegetables, :boolean, :default => false
  end
end
