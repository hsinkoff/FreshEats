class CreateFoods < ActiveRecord::Migration
  def change
    create_table :foods do |t|
    	t.string :place_id 

      t.timestamps
    end
  end
end
