class CreateProspectCharacteristics < ActiveRecord::Migration[5.1]
  def change
    create_table :prospect_characteristics do |t|
      t.string :job_title
      t.string :seniority_level
      t.string :function
      t.string :industry
      t.string :company_name
      t.string :company_headcount
      t.string :past_company
      t.string :company_type
      t.string :school
      t.string :language
      t.string :years_in_current_position
      t.string :years_at_current_company
      t.string :years_of_experience

      t.timestamps
    end
  end
end
