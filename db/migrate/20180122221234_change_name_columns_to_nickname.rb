class ChangeNameColumnsToNickname < ActiveRecord::Migration[5.1]
  def change
    rename_column :users, :first_name, :nickname
    remove_column :users, :last_name
  end
end
