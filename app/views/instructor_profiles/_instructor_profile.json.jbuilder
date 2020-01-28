json.extract! instructor_profile, :id, :first_name, :last_name, :citizen_id, :instructor_id, :department_name, :user_id, :group_id, :created_at, :updated_at
json.url instructor_profile_url(instructor_profile, format: :json)
