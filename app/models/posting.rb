# == Schema Information
#
# Table name: postings
#
#  id           :integer          not null, primary key
#  company_id   :integer          not null
#  external_url :string
#  title        :string           not null
#  position     :string           not null
#  description  :string           not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Posting < ApplicationRecord
  validates :company_id, :title, :position, :description, presence: true

  belongs_to :company

  has_many :posting_saves,
    class_name: :PostingSave,
    primary_key: :id,
    foreign_key: :posting_id

  has_many :posting_applications

  has_many :interested_users, through: :posting_saves, source: :user
end
