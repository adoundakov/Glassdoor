@companies.each do |company|
  json.set! company.id do
    json.extract! company, :id, :name, :logo_url, :cover_url, :location, :company_url, :average_rating
    json.numPostings company.postings.length
    json.numReviews company.reviews.length
  end
end
