class AddNoFruitNoVegToStores < ActiveRecord::Migration
  def change
  	add_column :stores, :no_fruits, :boolean, :default => true
  	add_column :stores, :no_vegetables, :boolean, :default => true
  end
end
