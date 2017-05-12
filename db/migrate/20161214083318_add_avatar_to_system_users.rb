class AddAvatarToSystemUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :system_users, :avatar, :string
  end
end
