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

require 'test_helper'

class SalaryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
