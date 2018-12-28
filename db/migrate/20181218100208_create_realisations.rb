class CreateRealisations < ActiveRecord::Migration[5.1]
  def change
    create_table :realisations do |t|
      t.string :titre
      t.text :description
      t.string :rphoto
      t.string :adresse
      t.timestamps
    end
  end
end
