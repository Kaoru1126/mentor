class AddNicknameToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :nickname, :string, limit: 20, null:false
    add_column :users, :avatar, :string
    add_column :users, :intro, :string
  end
end
