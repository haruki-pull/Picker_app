class RenamePasswordDogestColumnToUsers < ActiveRecord::Migration[5.2]
  def change
    rename_column :users, :password_dogest, :password_digest
  end
end
