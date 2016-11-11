# == Schema Information
#
# Table name: salaries
#
#  id         :integer          not null, primary key
#  title      :string           not null
#  user_id    :integer          not null
#  company_id :integer          not null
#  salary     :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Salary < ApplicationRecord
  validates :title, :user_id, :company_id, :salary, presence: true

  belongs_to :user
  belongs_to :company

  def location
    self.company.location
  end
end
