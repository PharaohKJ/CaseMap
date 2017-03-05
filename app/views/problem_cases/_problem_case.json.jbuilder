json.extract! problem_case, :id, :case_type_id, :description, :address, :latitude, :longitude, :time, :created_at, :updated_at
json.url problem_case_url(problem_case, format: :json)
