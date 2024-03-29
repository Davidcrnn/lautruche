class CreateLuminaires < ActiveRecord::Migration[5.1]
  def change
    create_table :luminaires do |t|
      t.string :titre
      t.text :description
      t.integer :prix
      t.string :categorie
      t.string :luphoto
      t.boolean :visible, default: true, null: false
      t.timestamps
    end
  end
end
