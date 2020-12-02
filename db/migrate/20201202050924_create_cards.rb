class CreateCards < ActiveRecord::Migration[6.0]
  def change
    create_table :cards do |t|
      t.string :front_side
      t.string :back_side

      t.timestamps
    end
  end
end
