json.extract! project, :id, :name, :city_id, :project_type_id, :state_id, :created_at, :updated_at
json.url project_url(project, format: :json)
