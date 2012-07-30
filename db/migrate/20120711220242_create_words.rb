class CreateWords < ActiveRecord::Migration
  def change
    create_table :words do |t|
      t.string :english
      t.string :french
      t.string :locale

      t.timestamps
    end
  end
end
