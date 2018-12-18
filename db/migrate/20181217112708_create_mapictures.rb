class CreateMapictures < ActiveRecord::Migration[5.1]
  def change
    create_table :mapictures do |t|
      t.string :mapicture
      t.integer :maroquinerie_id
      t.timestamps
    end
  end
end
