class AlterPicsAddImage < ActiveRecord::Migration
	#define what the migration applies
  def up
  	add_column :pics, :image, :string
  end

	# Defines how to undo the migration
  def down
  	remove_column :pics, :image
  end
end
