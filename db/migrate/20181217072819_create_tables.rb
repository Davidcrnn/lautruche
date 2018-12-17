class CreateTables < ActiveRecord::Migration[5.1]
  def change
    create_table :tables do |t|
      t.string :titre
      t.text :description
      t.integer :prix
      t.string :categorie
      t.string :tphoto
      t.boolean :visible, default: true, null: false
      t.timestamps
    end
  end
end
