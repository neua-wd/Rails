json.extract! visitor_profile, :id, :first_name, :last_name, :citizen_id, :user_id, :created_at, :updated_at
json.url visitor_profile_url(visitor_profile, format: :json)
