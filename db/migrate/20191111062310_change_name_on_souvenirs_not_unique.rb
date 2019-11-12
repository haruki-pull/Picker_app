class ChangeNameOnSouvenirsNotUnique < ActiveRecord::Migration[5.2]
  def change
    remove_index :souvenirs, :name
    add_index :souvenirs, :name
  end
end
