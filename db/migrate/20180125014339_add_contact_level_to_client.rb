class AddContactLevelToClient < ActiveRecord::Migration[5.1]
  def change
    add_column :clients, :contact_level, :string
  end
end
