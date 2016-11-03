json.extract! @posting, :id, :external_url, :title, :position, :description, :created_at
json.company do
  json.extract! @posting.company, :company_url, :name, :size, :ceo, :logo_url, :cover_url, :location, :description, :id
end
