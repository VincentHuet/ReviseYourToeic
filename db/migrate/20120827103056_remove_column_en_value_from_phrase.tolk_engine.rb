# This migration comes from tolk_engine (originally 20120703095920)
class RemoveColumnEnValueFromPhrase < ActiveRecord::Migration
  def up
    remove_column :tolk_engine_phrases, :en_value
  end

  def down
    add_column :tolk_engine_phrases, :en_value
  end
end