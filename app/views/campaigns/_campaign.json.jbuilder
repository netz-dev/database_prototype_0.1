json.extract! campaign, :id, :client_id, :campaign_reference, :campaign_status, :campaign_type, :campaign_plan, :estimated_campaign_length, :initial_total_prospects, :total_prospects_to_date, :commercial_agreement_signed_date, :estimated_start_date, :estimated_end_date, :start_date, :end_date, :created_at, :updated_at
json.url campaign_url(campaign, format: :json)
