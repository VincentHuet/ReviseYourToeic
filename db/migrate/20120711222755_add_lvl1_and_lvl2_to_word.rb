class AddLvl1AndLvl2ToWord < ActiveRecord::Migration
  def change
    add_column :words, :lvl1, :string
    add_column :words, :lvl2, :string
  end
end
