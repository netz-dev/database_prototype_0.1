class CreateProspects < ActiveRecord::Migration[5.1]
  def change
    create_table :prospects do |t|
      t.belongs_to :client, foreign_key: true, optional: true
      t.belongs_to :campaign, foreign_key: true, optional: true
      t.string :prospect_type
      t.string :prospect_status
      t.string :first_name
      t.string :last_name
      t.string :email
      t.integer :phone_number
      t.integer :mobile_number
      t.string :branch_location

      t.timestamps
    end
  end
end
