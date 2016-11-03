class Posting < ApplicationRecord
  validates :company_id, :title, :position, :description, presence: true

  belongs_to :company
  has_many :posting_saves
  has_many :posting_applications
  has_many :interested_users, through: :posting_saves, source: :user
end
