class CreateCardsReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :cards_reviews do |t|
      t.integer :user_id
      t.integer :cards_id
      t.text :review

      t.timestamps
    end
  end
end
