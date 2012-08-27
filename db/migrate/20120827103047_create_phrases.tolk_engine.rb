# This migration comes from tolk_engine (originally 20120627155422)
class CreatePhrases < ActiveRecord::Migration
  def change
    create_table :tolk_engine_phrases do |t|
      t.string :key

      t.timestamps
    end
  end
end
