json.extract! @company, :id, :name, :company_url, :logo_url, :cover_url, :location, :description, :ceo, :size
json.postings do
  @company.postings.each do |posting|
    json.set! posting.id do
      json.extract! posting, :id, :title, :created_at
      json.company do
        json.extract! @company, :name, :location, :logo_url
      end
    end
  end
end
