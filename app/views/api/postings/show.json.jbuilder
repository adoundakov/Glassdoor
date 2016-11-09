json.extract! @posting, :id, :external_url, :title, :position, :description, :age
json.company do
  json.extract! @posting.company, :company_url, :name, :size, :ceo, :logo_url, :cover_url, :location, :description, :id
end

if current_user
  if current_user.saved_postings.include?(@posting)
    json.isSaved true
  else
    json.isSaved false
  end

  if current_user.applied_postings.include?(@posting)
    json.isApplied true
  else
    json.isApplied false
  end
else
  json.isSaved false
  json.isApplied false
end
