class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :username, unique: true, index: true, null: false
      t.string :password_digest, null: false
      t.string :email, null: false, unique: true, index: true
      t.string :session_token, null: false, index: true, unique: true
      t.boolean :is_employer, null: false, default: false
      t.integer :company_id, default: -1
      t.timestamps
    end
  end
end
