class CreateBoutiques < ActiveRecord::Migration[5.1]
  def change
    create_table :boutiques do |t|
      t.string :name
      t.string :address
      t.float :latitude
      t.float :longitude
      t.timestamps
    end
  end
end
