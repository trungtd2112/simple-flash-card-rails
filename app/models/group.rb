class Group < ApplicationRecord
    belongs_to :user
    has_many :card
    has_many :group_review, -> { order "created_at DESC"}
end
