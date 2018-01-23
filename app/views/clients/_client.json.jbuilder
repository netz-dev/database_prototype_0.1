json.extract! client, :id, :client_company_id, :title, :first_name, :last_name, :email, :phone_number, :mobile_number, :branch_location, :created_at, :updated_at
json.url client_url(client, format: :json)
