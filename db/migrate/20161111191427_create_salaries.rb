class CreateSalaries < ActiveRecord::Migration[5.0]
  def change
    create_table :salaries do |t|
      t.string :title, null: false
      t.integer :user_id, null: false
      t.integer :company_id, null: false
      t.integer :salary, null: false
      t.timestamps
    end
  end
end
