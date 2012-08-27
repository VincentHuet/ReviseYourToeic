# This migration comes from tolk_engine (originally 20120702133052)
class RemoveColumnsLocalePhraseFromTranslation3 < ActiveRecord::Migration
  def up
    remove_column :tolk_engine_translations, :phrase
    remove_column :tolk_engine_translations, :locale
  end

  def down
    add_column :tolk_engine_translations, :phrase
    add_column :tolk_engine_translations, :locale
  end
end