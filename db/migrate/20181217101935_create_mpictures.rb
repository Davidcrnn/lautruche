class CreateMpictures < ActiveRecord::Migration[5.1]
  def change
    create_table :mpictures do |t|
      t.string :mpicture
      t.integer :mobilier_id
      t.timestamps
    end
  end
end
