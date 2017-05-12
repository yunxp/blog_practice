class AddCoverToTravels < ActiveRecord::Migration[5.0]
  def change
    add_column :travels, :cover, :string
  end
end
