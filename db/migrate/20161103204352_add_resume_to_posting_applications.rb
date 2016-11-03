class AddResumeToPostingApplications < ActiveRecord::Migration[5.0]
  def change
    add_column :posting_applications, :resume, :string, null: false
  end
end
