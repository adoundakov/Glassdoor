@postings.each do |posting|
  json.set! posting.id do
    json.extract! posting, :id, :title, :age
    json.company do
      json.extract! posting.company, :name, :location, :logo_url
    end
  end
end
