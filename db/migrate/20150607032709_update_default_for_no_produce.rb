class UpdateDefaultForNoProduce < ActiveRecord::Migration
  def change
  	change_column_default :stores, :no_fruits, false
  	change_column_default :stores, :no_vegetables, false
  end
end
