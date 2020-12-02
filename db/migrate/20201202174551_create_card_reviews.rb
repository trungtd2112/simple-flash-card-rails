class CreateCardReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :card_reviews do |t|
      t.integer :user_id
      t.integer :card_id
      t.text :review

      t.timestamps
    end
  end
end
