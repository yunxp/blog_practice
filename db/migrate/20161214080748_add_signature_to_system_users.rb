class AddSignatureToSystemUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :system_users, :signature, :string
  end
end
