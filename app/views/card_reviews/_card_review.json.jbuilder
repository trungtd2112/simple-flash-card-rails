json.extract! card_review, :id, :user_id, :card_id, :review, :created_at, :updated_at
json.url card_review_url(card_review, format: :json)
