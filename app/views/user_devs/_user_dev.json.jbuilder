json.extract! user_dev, :id, :first_name, :last_name, :email, :password, :password_confirmation, :image_url, :locale, :created_at, :updated_at
json.url user_dev_url(user_dev, format: :json)
