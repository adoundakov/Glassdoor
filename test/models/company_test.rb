# == Schema Information
#
# Table name: companies
#
#  id          :integer          not null, primary key
#  name        :string           not null
#  size        :string           not null
#  ceo         :string           not null
#  logo_url    :string           not null
#  cover_url   :string           not null
#  location    :string           not null
#  company_url :string
#  description :string           default("This Company has yet to add a description.")
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class CompanyTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
