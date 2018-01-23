class CreateCampaigns < ActiveRecord::Migration[5.1]
  def change
    create_table :campaigns do |t|
      t.belongs_to :client, foreign_key: true
      t.string :campaign_reference
      t.string :campaign_status
      t.string :campaign_type
      t.string :campaign_plan
      t.integer :estimated_campaign_length
      t.integer :initial_total_prospects
      t.date :total_prospects_to_date
      t.date :commercial_agreement_signed_date
      t.date :estimated_start_date
      t.date :estimated_end_date
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
