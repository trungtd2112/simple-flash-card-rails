json.extract! cards_review, :id, :user_id, :cards_id, :review, :created_at, :updated_at
json.url cards_review_url(cards_review, format: :json)
