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

class Company < ApplicationRecord
  include ActionView::Helpers::NumberHelper
  SIZES = %w(1-10 11-50 51-200 201-500 501-1,000 1,001-5,000 5,001-10,000 10,001+)
  validates :name, uniqueness: true, presence: true
  validates :ceo, :logo_url, :cover_url, :location, presence: true
  validates :size, inclusion: { in: SIZES }

  has_many :postings
  has_many :reviews

  def average_rating
    ratings = []
    self.reviews.map { |review| ratings << review.rating }
    if ratings.empty?
      return '--'
    else
      average = (ratings.inject(:+).to_f / ratings.size.to_f)
      return number_with_precision(average, precision: 2).to_s
    end
  end

  def self.search_by_name(input)
    query = '%' + input + '%'
    Company.where("name LIKE ?", query)
  end
end
