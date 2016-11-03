class CreatePostingApplications < ActiveRecord::Migration[5.0]
  def change
    create_table :posting_applications do |t|
      t.integer :user_id, null: false
      t.integer :posting_id, null: false, index: true
      t.timestamps
    end

    add_index :posting_applications, [:user_id, :posting_id]
  end
end
