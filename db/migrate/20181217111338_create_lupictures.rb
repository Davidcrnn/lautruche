class CreateLupictures < ActiveRecord::Migration[5.1]
  def change
    create_table :lupictures do |t|
      t.string :lupicture
      t.integer :luminaire_id
      t.timestamps
    end
  end
end
