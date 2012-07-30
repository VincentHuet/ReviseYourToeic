class CreateLocales < ActiveRecord::Migration
  def change
    create_table :locales do |t|
      t.string :name
      t.boolean :primary_locale

      t.timestamps
    end
  end
end
