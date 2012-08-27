# This migration comes from tolk_engine (originally 20120705130656)
class AddColumnPrimaryLocaleToLocale < ActiveRecord::Migration
  def up
    add_column :tolk_engine_locales, :primary_locale, :boolean
  end

  def down
    remove_column :tolk_engine_locales, :primary_locale, :boolean
  end
end
