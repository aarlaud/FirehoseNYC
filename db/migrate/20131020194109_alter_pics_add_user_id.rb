class AlterPicsAddUserId < ActiveRecord::Migration
  def up
  	add_column :pics, :user_id, :integer
  	add_index :pics, :user_id
  end

  def down
  	remove_column :pics, :user_id
  	# Below is optional as removing the column also removes the indexes associated
  	#remove_index :pics, :user_id
  end
end
