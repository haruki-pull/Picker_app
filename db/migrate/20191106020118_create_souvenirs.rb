class CreateSouvenirs < ActiveRecord::Migration[5.2]
  def change
    create_table :souvenirs do |t|
      t.string :name
      t.string :spot
      t.integer :price
      t.integer :good
      t.string :picture
      t.string :genre
      t.text :comment

      t.timestamps
    end
      add_index:souvenirs, :name, unique: true
  end
end
