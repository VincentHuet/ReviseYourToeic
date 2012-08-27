# This migration comes from tolk_engine (originally 20120702121407)
class CreateTranslators < ActiveRecord::Migration
  def change
    create_table :tolk_engine_translators do |t|
      t.string :name
      t.integer :locale_id
      t.string :password

      t.timestamps
    end
  end
end
