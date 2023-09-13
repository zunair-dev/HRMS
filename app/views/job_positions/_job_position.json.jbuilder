json.extract! job_position, :id, :title, :description, :created_at, :updated_at
json.url job_position_url(job_position, format: :json)
