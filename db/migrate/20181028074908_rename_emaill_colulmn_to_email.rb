class RenameEmaillColulmnToEmail < ActiveRecord::Migration[5.2]
  def change
    rename_column :users, :emaill, :email
  end
end
