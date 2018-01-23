class AddForeignKeysToProspect < ActiveRecord::Migration[5.1]
  def change
    add_reference :prospects, :prospect_company, foreign_key: true
    add_reference :prospects, :prospect_characteristic, foreign_key: true
  end
end
