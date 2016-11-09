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

require 'test_helper'

class ReviewTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
