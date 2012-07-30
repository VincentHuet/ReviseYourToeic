class AddPathToWords < ActiveRecord::Migration
  def up
  	add_column :words, :path, :string
  end

  def down
    remove_column :words, :path, :string
  end
end

