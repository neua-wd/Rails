json.extract! student_profile, :id, :first_name, :last_name, :citizen_id, :student_id, :user_id, :created_at, :updated_at
json.url student_profile_url(student_profile, format: :json)
