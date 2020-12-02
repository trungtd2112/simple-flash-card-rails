json.extract! group_review, :id, :user_id, :group_id, :review, :created_at, :updated_at
json.url group_review_url(group_review, format: :json)
