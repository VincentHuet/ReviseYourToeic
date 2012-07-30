class RemoveUselessColumnsFromWords < ActiveRecord::Migration
  def up
    remove_column :words, :locale, :string
    remove_column :words, :lvl1, :string
    remove_column :words, :lvl2, :string
  end

  def down
    add_column :words, :locale, :string
    add_column :words, :lvl1, :string
    add_column :words, :lvl2, :string
  end
end
