class CreateCompanies < ActiveRecord::Migration[5.0]
  def change
    create_table :companies do |t|
      t.string :name, null: false, index: true, unique: true
      t.string :size, null: false
      t.string :ceo, null: false
      t.string :logo_url, null: false
      t.string :cover_url, null: false
      t.integer :location, null: false, index: true
      t.timestamps
    end
  end
end
