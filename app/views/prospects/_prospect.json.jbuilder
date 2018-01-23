json.extract! prospect, :id, :client_id, :campaign_id, :prospect_type, :prospect_status, :first_name, :last_name, :email, :phone_number, :mobile_number, :branch_location, :created_at, :updated_at
json.url prospect_url(prospect, format: :json)
