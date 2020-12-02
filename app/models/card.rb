class Card < ApplicationRecord
    belongs_to :user
    belongs_to :group
    has_one_attached :picture
    has_many :card_review, -> { order "created_at DESC"}
end
