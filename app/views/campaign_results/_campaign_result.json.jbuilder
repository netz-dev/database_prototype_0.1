json.extract! campaign_result, :id, :campaign_id, :campaign_reply_rate, :campaign_click_through_rate, :campaign_open_rate, :total_replies, :total_positive_replies, :total_opens, :total_clicks, :created_at, :updated_at
json.url campaign_result_url(campaign_result, format: :json)
