class CreateEpictures < ActiveRecord::Migration[5.1]
  def change
    create_table :epictures do |t|
      t.string :epicture
      t.integer :enfant_id
      t.timestamps
    end
  end
end
