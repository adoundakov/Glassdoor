# == Schema Information
#
# Table name: posting_saves
#
#  id         :integer          not null, primary key
#  user_id    :integer          not null
#  posting_id :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class PostingSave < ApplicationRecord
  validates :user_id, :posting_id, presence: true

  belongs_to :user
  belongs_to :posting
end
