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

require 'test_helper'

class PostingTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
