json.extract! member, :id, :name, :first_last_name, :second_last_name, :employee_code, :created_at, :updated_at
json.url member_url(member, format: :json)
