class CreateOriginals < ActiveRecord::Migration
  def change
    create_table :originals do |t|
      t.string :path
      t.string :base

      t.timestamps
    end
  end
end
