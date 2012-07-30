class ChangeColumnsNameFromWords < ActiveRecord::Migration
  def up
  	add_column :words, :original_id, :integer
  end

  def down
    remove_column :words, :original_id, :integer
  end
end
