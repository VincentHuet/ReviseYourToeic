# This migration comes from tolk_engine (originally 20120627155635)
class CreateTranslations < ActiveRecord::Migration
  def change
    create_table :tolk_engine_translations do |t|
      t.boolean :Primary_updated
      t.string :text
      t.integer :translator_id
      t.integer :phrase_id
      t.string :phrase
      t.integer :locale_id
      t.string :locale

      t.timestamps
    end
  end
end
