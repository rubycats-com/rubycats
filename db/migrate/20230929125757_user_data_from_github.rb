class UserDataFromGithub < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :name, :string
    add_column :users, :avatar_url, :string
    add_column :users, :nickname, :string
  end
end
