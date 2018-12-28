class CreateRpictures < ActiveRecord::Migration[5.1]
  def change
    create_table :rpictures do |t|
      t.string :rpicture
      t.integer :realisation_id
      t.timestamps
    end
  end
end
