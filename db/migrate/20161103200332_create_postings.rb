class CreatePostings < ActiveRecord::Migration[5.0]
  def change
    create_table :postings do |t|
      t.integer  :company_id, index: true, null: false
      t.string :external_url
      t.string :title, null: false
      t.string :position, null: false
      t.string :description, null: false
      t.timestamps
    end
  end
end
