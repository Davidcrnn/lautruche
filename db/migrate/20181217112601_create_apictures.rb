class CreateApictures < ActiveRecord::Migration[5.1]
  def change
    create_table :apictures do |t|
      t.string :apicture
      t.integer :accessoire_id
      t.timestamps
    end
  end
end
