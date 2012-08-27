# This migration comes from tolk_engine (originally 20120629094616)
class CreateYmlSources < ActiveRecord::Migration

  def change
    create_table :tolk_engine_yml_sources do |t|
      t.string :name
      t.string :path

      t.timestamps
    end
  end
end
