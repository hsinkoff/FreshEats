class AddUsageToUser < ActiveRecord::Migration
  def change
  	add_column :users, :usage, :integer
  end
end
