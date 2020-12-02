class AddGroupIdUserIdToCard < ActiveRecord::Migration[6.0]
  def change
    add_column :cards, :user_id, :interger
    add_column :cards, :group_id, :interger
  end
end
