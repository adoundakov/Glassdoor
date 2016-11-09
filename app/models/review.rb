# == Schema Information
#
# Table name: reviews
#
#  id               :integer          not null, primary key
#  user_id          :integer          not null
#  company_id       :integer          not null
#  rating           :integer          not null
#  current_employee :boolean          not null
#  job_title        :string           not null
#  title            :string           not null
#  pros             :string           not null
#  cons             :string           not null
#  advice           :string           not null
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class Review < ApplicationRecord
  include ActionView::Helpers::DateHelper

  validates :user_id, :company_id, :rating, :current_employee, :job_title,
            :title, :pros, :cons, :advice, presence: true

  validates_uniqueness_of :user_id, scope: [:company_id],
                                    message: "Already reviewed this company"

  belongs_to :user
  belongs_to :company

  def age
    time_ago_in_words(self.created_at)
  end
end
