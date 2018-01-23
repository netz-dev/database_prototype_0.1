class CreateCampaignResults < ActiveRecord::Migration[5.1]
  def change
    create_table :campaign_results do |t|
      t.belongs_to :campaign, foreign_key: true
      t.integer :campaign_reply_rate
      t.integer :campaign_click_through_rate
      t.integer :campaign_open_rate
      t.integer :total_replies
      t.integer :total_positive_replies
      t.integer :total_opens
      t.integer :total_clicks

      t.timestamps
    end
  end
end
