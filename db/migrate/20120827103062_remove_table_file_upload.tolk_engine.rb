# This migration comes from tolk_engine (originally 20120710122223)
class RemoveTableFileUpload < ActiveRecord::Migration
  def up
    drop_table :tolk_engine_file_uploads
  end

  def down
    create_table :tolk_engine_file_uploads do |t|
      t.string :name
      t.string :path

      t.timestamps
    end
  end
end
