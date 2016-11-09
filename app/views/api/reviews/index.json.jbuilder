json.array! @reviews.each do |review|
  json.extract! review, :id, :company_id, :rating, :current_employee, :job_title, :title, :pros, :cons, :advice, :age
end
