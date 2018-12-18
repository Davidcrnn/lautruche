class CreateBpictures < ActiveRecord::Migration[5.1]
  def change
    create_table :bpictures do |t|
      t.string :bpicture
      t.integer :bijou_id
      t.timestamps
    end
  end
end
