@postings.each do |posting|
  json.set! posting.id do
    json.extract! posting, :id, :title, :created_at
    json.company do
      json.extract! posting.company, :id, :name, :location, :company_url
    end
  end
end
