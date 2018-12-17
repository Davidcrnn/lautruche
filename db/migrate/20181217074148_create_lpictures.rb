class CreateLpictures < ActiveRecord::Migration[5.1]
  def change
    create_table :lpictures do |t|
      t.string :lpicture
      t.integer :lifestyle_id
      t.timestamps
    end
  end
end
