class CreateGroupReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :group_reviews do |t|
      t.integer :user_id
      t.integer :group_id
      t.text :review

      t.timestamps
    end
  end
end
