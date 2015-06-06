class CreateFreshstores < ActiveRecord::Migration
  def change
    create_table :freshstores do |t|
    	t.string :name
    	t.string :address
    	t.string :zipcode
    	t.float :latitude
    	t.float :longitude

      t.timestamps
    end
  end
end
