class CreateTravels < ActiveRecord::Migration[5.0]
  def change
    create_table :travels do |t|
    	t.string  :title,          null: false, :limit => 30
    	t.string  :description,    null: false, :limit => 100
    	t.text    :content,        null: false
    	t.integer :system_user_id, null: false

    	t.timestamps null: false
    end
  end
end
