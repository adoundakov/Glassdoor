# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(username: 'guestSeeker', email: 'someone@example.com', password: '123456')
User.create!(username: 'alexSeeker', email: 'alex@aol.com', password: '123456')
User.create!(username: 'alexPoster', email: 'alex@employer.io', password: '123456', is_employer: true, company_id: 1)

Company.create!(name: 'Google', size: '10,001+' , ceo: 'Sundar Pichai', logo_url: 'https://www.wired.com/wp-content/uploads/2015/09/google-logo-1200x630.jpg', cover_url: 'http://www.underconsideration.com/brandnew/archives/google_2015_logo_detail.png', location: 'Mountain View, CA')
Company.create!(name: 'App Academy', size: '51-200', ceo: 'Ned Ruggeri', logo_url: 'http://haseebq.com/wordpress/wp-content/uploads/2015/05/aa.png', cover_url: 'https://cdn.evbuc.com/eventlogos/33308251/appacademylogo.png', location: 'San Francisco, CA')
Company.create!(name: 'nVidia', size: '5,001-10,000', ceo: 'Jen-Hsun Huang', logo_url: 'http://fullhdpictures.com/wp-content/uploads/2015/12/Nvidia-Logo-HD.jpg', cover_url: 'https://i.ytimg.com/vi/qMnYkH4Eiy4/maxresdefault.jpg', location: 'Santa Clara, CA')

Posting.create!(company_id: 1, title: 'Staff Engineer', position: 'Full-Time', description: 'Job for engineers at Google')
Posting.create!(company_id: 1, title: 'Self Driving Car Operator', position: 'Full-Time', description: 'Like driving around? This job is for you!')
Posting.create!(company_id: 2, title: 'Teaching Assistant', position: 'Full-Time', description: 'NEEDED: Passion for teaching programming.')
Posting.create!(company_id: 2, title: 'Student', position: 'Full-Time', description: 'Learn to code in 12 weeks, guaranteed.')
Posting.create!(company_id: 3, title: 'Beta Tester', position: 'Full-Time', description: 'Help us test the new GTX 1280, with 24GB GDDR9 VRAM and 45,000 CUDA Cores')
Posting.create!(company_id: 3, title: 'Production Engineer', position: 'Full-Time', description: 'Make the next GTX card a reality')
Posting.create!(company_id: 3, title: 'Market Analyist', position: 'Full-Time', description: 'Must be good with numbers.')

PostingSave.create!(user_id: 1, posting_id: 1)
PostingSave.create!(user_id: 1, posting_id: 2)
PostingSave.create!(user_id: 1, posting_id: 3)
PostingSave.create!(user_id: 2, posting_id: 2)
PostingSave.create!(user_id: 2, posting_id: 3)
PostingSave.create!(user_id: 2, posting_id: 4)
PostingSave.create!(user_id: 2, posting_id: 5)

PostingApplication.create!(user_id: 1, posting_id: 1, resume: 'HIRE ME PLEASE')
PostingApplication.create!(user_id: 1, posting_id: 2, resume: 'HIRE ME PLEASE')
PostingApplication.create!(user_id: 1, posting_id: 3, resume: 'HIRE ME PLEASE')
PostingApplication.create!(user_id: 1, posting_id: 4, resume: 'HIRE ME PLEASE')
PostingApplication.create!(user_id: 1, posting_id: 5, resume: 'HIRE ME PLEASE')
PostingApplication.create!(user_id: 1, posting_id: 6, resume: 'HIRE ME PLEASE')
PostingApplication.create!(user_id: 2, posting_id: 1, resume: 'HIRE ME PLEASE')
PostingApplication.create!(user_id: 2, posting_id: 2, resume: 'HIRE ME PLEASE')
PostingApplication.create!(user_id: 2, posting_id: 3, resume: 'HIRE ME PLEASE')
PostingApplication.create!(user_id: 2, posting_id: 4, resume: 'HIRE ME PLEASE')
PostingApplication.create!(user_id: 2, posting_id: 5, resume: 'HIRE ME PLEASE')
