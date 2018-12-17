class CreateTepictures < ActiveRecord::Migration[5.1]
  def change
    create_table :tepictures do |t|
      t.string :tepicture
      t.integer :textile_id
      t.timestamps
    end
  end
end
