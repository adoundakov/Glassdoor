# == Schema Information
#
# Table name: postings
#
#  id           :integer          not null, primary key
#  company_id   :integer
#  external_url :string
#  title        :string           not null
#  type         :string           not null
#  description  :string           not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Posting < ApplicationRecord
  validates :company_id, :title, :job_type, :description, presence: true

  belongs_to :company
  has_many :posting_saves
  has_many :posting_applications
  has_many :interested_users, through: :posting_saves, source: :user
end
