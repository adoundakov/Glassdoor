json.extract! @company, :id, :name, :company_url, :logo_url, :cover_url, :location, :description, :ceo, :size, :average_rating
json.postings do
  @company.postings.each do |posting|
    json.set! posting.id do
      json.extract! posting, :id, :title, :age
      json.company do
        json.extract! @company, :name, :location, :logo_url, :id
      end
    end
  end
end
json.numPostings @company.postings.length
json.topReview do
  json.extract! @company.reviews.last, :id, :advice, :age, :company_id, :cons, :current_employee, :job_title, :pros, :rating, :title
  json.company_logo_url @company.logo_url
end
json.numReviews @company.reviews.length
