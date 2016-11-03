class CreatePostingSaves < ActiveRecord::Migration[5.0]
  def change
    create_table :posting_saves do |t|
      t.integer  :user_id, null: false
      t.integer  :posting_id, null: false, index: true
      t.timestamps
    end

    add_index :posting_saves, [:user_id, :posting_id]
  end
end
