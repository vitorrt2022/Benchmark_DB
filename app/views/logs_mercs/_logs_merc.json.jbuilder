json.extract! logs_merc, :id, :user_id, :m_name, :t_name, :created_at, :updated_at
json.url logs_merc_url(logs_merc, format: :json)
