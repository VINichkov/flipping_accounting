json.extract! target_param, :id, :project_id, :start_price, :is_credit, :initial_fee, :mortgage_interest, :project_duration, :additional_expenses, :monthly_payment, :created_at, :updated_at
json.url target_param_url(target_param, format: :json)
