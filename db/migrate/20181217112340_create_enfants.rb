class CreateEnfants < ActiveRecord::Migration[5.1]
  def change
    create_table :enfants do |t|
      t.string :titre
      t.text :description
      t.integer :prix
      t.string :categorie
      t.string :ephoto
      t.boolean :visible, default: true, null: false
      t.timestamps
    end
  end
end
