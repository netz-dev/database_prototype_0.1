class CreateProspectCompanies < ActiveRecord::Migration[5.1]
  def change
    create_table :prospect_companies do |t|
      t.string :company_name
      t.string :street_address
      t.string :state
      t.string :postal_code
      t.string :city
      t.string :country

      t.timestamps
    end
  end
end
