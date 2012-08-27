# This migration comes from tolk_engine (originally 20120706085357)
class CreateFileUploads < ActiveRecord::Migration
  def change
    create_table :tolk_engine_file_uploads do |t|
      t.string :name
      t.string :path

      t.timestamps
    end
  end
end
