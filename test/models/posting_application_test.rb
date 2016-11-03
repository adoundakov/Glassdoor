# == Schema Information
#
# Table name: posting_applications
#
#  id         :integer          not null, primary key
#  user_id    :integer          not null
#  posting_id :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  resume     :string           not null
#

require 'test_helper'

class PostingApplicationTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
