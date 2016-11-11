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
75.times do |num|
  username = 'dummy' + "#{num}"
  User.create!(username: username, email: username, password: '123456')
end

Company.create!(name: 'Google',
                size: '10,001+',
                ceo: 'Sundar Pichai',
                logo_url: 'http://lafi.me/wp-content/uploads/2016/04/google-logo.jpg',
                cover_url: 'http://www.underconsideration.com/brandnew/archives/google_2015_logo_detail.png',
                location: 'Mountain View, CA',
                company_url: 'www.google.com',
                description: 'The future.')
Company.create!(name: 'App Academy',
                size: '51-200',
                ceo: 'Ned Ruggeri',
                logo_url: 'http://haseebq.com/wordpress/wp-content/uploads/2015/05/aa.png',
                cover_url: 'https://cdn.evbuc.com/eventlogos/33308251/appacademylogo.png',
                location: 'San Francisco, CA',
                company_url: 'www.appacademy.io',
                description: 'learn to code')
Company.create!(name: 'nVidia',
                size: '5,001-10,000',
                ceo: 'Jen-Hsun Huang',
                logo_url: 'http://fullhdpictures.com/wp-content/uploads/2015/12/Nvidia-Logo-HD.jpg',
                cover_url: 'https://i.ytimg.com/vi/qMnYkH4Eiy4/maxresdefault.jpg',
                location: 'Santa Clara, CA',
                company_url: 'www.nvidia.com',
                description: 'The way its meant to be played.')
Company.create!(name: 'Magic Leap',
                size: '201-500',
                ceo: 'Sam Miller',
                logo_url: 'https://crunchbase-production-res.cloudinary.com/image/upload/c_pad,h_140,w_140/v1460821115/scfem3unytmawntokiht.png',
                cover_url: 'http://images.naldzgraphics.net/2015/04/12-blue-green-low-poly.jpg',
                location: 'Dania, FL',
                company_url: 'www.magicleap.com',
                description: 'Magic Leap is a proprietary wearable technology company that enables users to interact with digital devices in a completely visually cinematic way.')
Company.create!(name: 'Bio-Rad Laboratories',
                size: '5,001-10,000',
                ceo: 'Norman D. Schwartz',
                logo_url: 'https://crunchbase-production-res.cloudinary.com/image/upload/c_pad,h_140,w_140/v1461591884/oenhglijuijznxrh59ai.jpg',
                cover_url: 'http://www.bio-rad.com/webroot/web/images/corporate/who-we-are-feature.jpg',
                location: 'Hercules, CA',
                company_url: 'www.bio-rad.com',
                description: 'Bio-Rad Laboratories has played a leading role in the advancement of scientific discovery for over 50 years by providing a broad range of innovative tools and services to the life science research and clinical diagnostics markets. Founded in 1952, Bio-Rad has a global team of more than 6,500 employees and serves more than 85,000 research and industry customers worldwide through its global network of operations. Throughout its existence, Bio-Rad has built strong customer relationships that advance scientific research and development efforts and support the introduction of new technology used in the growing fields of genomics, proteomics, drug discovery, food safety, medical diagnostics, and more.')
Company.create!(name: 'Zoox',
                size: '51-200',
                ceo: 'Tim Kentley-Kay',
                logo_url: 'https://crunchbase-production-res.cloudinary.com/image/upload/c_pad,h_140,w_140/v1467323069/jtzg83kokq2t4yelfzct.png',
                cover_url: 'http://zoox.com/ZXlogo.jpg',
                location: 'Menlo Park, CA',
                company_url: 'www.zoox.com',
                description: 'Zoox is a robotics company pioneering autonomous mobility as-a-service. Zoox is developing a breakthrough, fully automated, electric vehicle fleet and the supporting ecosystem required to bring the service to market at scale.')
Company.create!(name: 'Six Flags',
                size: '10,001+',
                ceo: 'John M. Duffey',
                logo_url: 'https://crunchbase-production-res.cloudinary.com/image/upload/c_pad,h_140,w_140/v1474473799/gj0fz7oq24rxkuixg9d0.jpg',
                cover_url: 'http://thestatenislandfamily.com/wp-content/uploads/2013/08/SF_GoBig.jpg',
                location: 'Grand Prairie, TX',
                company_url: 'www.sixflags.com',
                description: 'Six Flags Entertainment Corporation is the world’s largest regional theme park company with $1.1 billion in revenue and 18 parks across North America. The company operates 16 parks in the United States, one in Mexico City and one in Montreal, Canada. For more than 53 years, Six Flags has entertained millions of families with world-class coasters, themed rides, thrilling water parks and unique attractions including up-close animal encounters, Fright Fest and Holiday in the Park')
Company.create!(name: 'Wayfair',
                size: '1,001-5,000',
                ceo: 'Niraj Shah',
                logo_url: 'https://crunchbase-production-res.cloudinary.com/image/upload/c_pad,h_140,w_140/v1398815631/lmpxyhphjtcka2rck8zi.png',
                cover_url: 'https://secure.img1.wfcdn.com/st4/stores/common/logos/header/wayfair_logo.png',
                location: 'Boston, MA',
                company_url: 'www.wayfair.com',
                description: "Wayfair is the largest pure-play online retailer of home goods in the US. Key categories for the company include furniture, decor, kitchen & dining products, home improvement, patio & garden and baby.
The company, founded in 2002 as CSN Stores, is based in Boston, MA, and has additional offices in Utah, Kentucky, New York, Galway, Ireland, London, England and Berlin, Germany. Wayfair employs over 2,300 people across those offices.
In 2014, Wayfair's sales exceeded $1.3 billion.")

Company.create!(name: 'EMC',
                size: '1,001-5,000',
                ceo: 'David Goulden',
                logo_url: 'https://crunchbase-production-res.cloudinary.com/image/upload/c_pad,h_140,w_140/v1397181829/cdc987d2caef11a25acb3ce76625b3c6.png',
                cover_url: 'https://www.emc.com/content/dam/uwaem/production-design-assets/en/unity/images/leadspace-storage-unity-all-flash-large.jpg',
                location: 'Hopkinton, MA',
                company_url: 'www.emc.com',
                description: "EMC is a global leader in enabling businesses and service providers to transform their operations and deliver information technology as a service (ITaaS). Fundamental to this transformation is cloud computing. Through innovative products and services, EMC accelerates the journey to cloud computing, helping IT departments to store, manage, protect and analyze their most valuable asset — information — in a more agile, trusted and cost-efficient way.
EMC is a manufacturer of software and systems for information management and storage. EMC produces a range of enterprise storage products, including hardware disk arrays and storage management software. Its flagship product, the Symmetrix, is the foundation of storage networks in many large data centers.")

Company.create!(name: 'Akamai',
                size: '10,001+',
                ceo: 'Jonathan Seelig',
                logo_url: 'https://crunchbase-production-res.cloudinary.com/image/upload/c_pad,h_140,w_140/v1417550589/ahfolt6r1ufie8aav2dm.png',
                cover_url: 'https://wp-farm-public-static-images.s3.amazonaws.com/streamamg.com/wp-content/uploads/2016/02/03141900/Akamai-Technologies-Inc..png',
                location: 'Cambridge, MA',
                company_url: 'www.akamai.com',
                description: "Akamai® is the leading provider of cloud services for helping enterprises provide secure, high-performing user experiences on any device, anywhere. If you've ever shopped online, downloaded music, watched a web video or connected to work remotely, you've probably used Akamai's cloud platform.
Akamai helps enterprises accelerate innovation in the hyperconnected world by removing the complexities of technology so you can focus on driving your business faster forward. We enable enterprises to capitalize on market opportunities presented by trends like mobile and cloud while overcoming the challenges presented by security threats and the need to reach users globally.
The Akamai Intelligent Platform™ reaches globally and delivers locally, providing unmatched reliability, security and visibility into your online business.")

Company.create!(name: 'FiscalNote',
                size: '51-200',
                ceo: 'Gerald Yao',
                logo_url: 'https://crunchbase-production-res.cloudinary.com/image/upload/c_pad,h_140,w_140/v1445607982/behkj10wspayic9tur1e.jpg',
                cover_url: 'http://ww1.prweb.com/prfiles/2015/07/28/13133148/FiscalNote%20logo.png',
                location: 'Washington, DC',
                company_url: 'www.fiscalnote.com',
                description: 'FiscalNote is a privately held company that uses artificial intelligence and big data to deliver immediate predictive analytics of governmental action to pinpoint impact.
Its flagship platform provides real-time legislative predictive capabilities as well as enterprise collaboration and visualization tools for data on campaign finance, demographics, news, and open data to government relations professionals to help them make faster decisions.')

Company.create!(name: 'GoodRx',
                size: '11-50',
                ceo: 'Scott Marlette',
                logo_url: 'https://crunchbase-production-res.cloudinary.com/image/upload/c_pad,h_140,w_140/v1397187929/7a9a036b5781dd7f2c2c9b16030886f8.jpg',
                cover_url: 'https://d2q79iu7y748jz.cloudfront.net/s/_headerimage/78077cff57fa67f1d85c7b60c0682995',
                location: 'Santa Monica, CA',
                company_url: 'www.goodrx.com',
                description: "GoodRx is the first and only prescription drug price comparison tool created for consumers with prices from pharmacies nationwide. GoodRx's founders are seasoned technology executives who were early employees at Facebook, Yahoo and other successful companies.")

Company.create!(name: 'Favor',
                size: '51-200',
                ceo: 'Ben Doherty',
                logo_url: 'https://crunchbase-production-res.cloudinary.com/image/upload/c_pad,h_140,w_140/v1398400128/cg2xlrnoavjqe9byafw4.png',
                cover_url: 'https://favordelivery.com/wp-content/uploads/2014/06/Favor-WebsitePreviewImages.png',
                location: 'Austin, TX',
                company_url: 'www.favordelivery.com',
                description: "Favor is a simple way to get anything you want delivered. Order anything from any store within the delivery area or choose one of our featured items.Your runner is your personal assistant. Just let them know what you need. Review your receipt, select your tip and confirm. Payment is cashless and done in the app.
Download the app for iPhone or Android and request whatever you need from local stores or restaurants with the tap of a button. A friendly personal assistant will bring you whatever you need and you can checkout right inside the app. Favor is currently available in Toronto & 17 cities in the U.S. Currently the best rated delivery service in the US & Canada, Favor will be rapidly expanding in 2016. Check to see if Favor is your area at www.favordelivery.com")

Company.create!(name: 'Expense Bot',
                size: '1-10',
                ceo: 'Ed Bucholz',
                logo_url: 'https://crunchbase-production-res.cloudinary.com/image/upload/c_pad,h_140,w_140/v1474573414/jt1inmgeltnthfyv7gqb.png',
                cover_url: 'https://expensebot.com/img/expensebot-2aba3899.png',
                location: 'Cleveland, OH',
                company_url: 'www.expensebot.com',
                description: 'ExpenseBot helps user to create and get reimbursed for expense reports as quickly and simply as possible. They combine a best-in-class expense management product with a team of hard-working and helpful "ExpenseBots" that act as their assistant in order to save time and effort.')

Company.create!(name: 'Editas Medicine',
                size: '11-50',
                ceo: 'J. Keith Joung',
                logo_url: 'https://crunchbase-production-res.cloudinary.com/image/upload/c_pad,h_140,w_140/v1397185134/d708eb32adfc362227e2fdcc0cee7755.jpg',
                cover_url: 'https://static1.squarespace.com/static/540b7d95e4b0e534644febd1/t/554a5520e4b0a1b37ab0621e/1430934823118/',
                location: 'Cambridge, MA',
                company_url: 'www.editasmedicine.com',
                description: "The company's mission is to translate its genome editing technology into a novel class of human therapeutics that enable precise and corrective molecular modification to treat the underlying cause of a broad range of diseases at the genetic level. The company has generated substantial patent filings and has access to intellectual property covering foundational genome editing technologies, as well as essential advancements and enablements that will uniquely allow the company to translate early findings into viable human therapeutic products.")

Company.create!(name: 'Duo Security',
                size: '201-500',
                ceo: 'Jon Oberheide',
                logo_url: 'https://crunchbase-production-res.cloudinary.com/image/upload/c_pad,h_140,w_140/v1452787688/hnliejmhcypkkgsmjcly.jpg',
                cover_url: 'https://duo.com/assets/img/duoLogo-web.png',
                location: 'Ann Arbor, MI',
                company_url: 'www.duo.com',
                description: 'Duo Security is a cloud-based access security provider protecting the world’s fastest-growing and largest companies and thousands of organizations worldwide, including Box, Etsy, Facebook, K-Swiss, The Men’s Wearhouse, NASA, Palantir, Paramount Pictures, Random House, Toyota, TripAdvisor, Twitter, Yelp, Zillow, and more. Duo Security’s innovative and easy-to-use technology can be quickly deployed to protect users, data, and applications from breaches, credential theft and account takeover. Duo Security is backed by Benchmark, Google Ventures, Radar Partners, Redpoint Ventures and True Ventures. Try it for free at www.duosecurity.com.')

Company.create!(name: 'DroneShield',
                size: '11-50',
                ceo: 'John Franklin',
                logo_url: 'https://crunchbase-production-res.cloudinary.com/image/upload/c_pad,h_140,w_140/v1403275435/fbujd2gutvcx1xxe1ni0.png',
                cover_url: 'http://ww1.prweb.com/prfiles/2015/08/06/12891718/DroneShield_logo_with_tag_hires.jpg',
                location: 'Washington, DC',
                company_url: 'www.droneshield.org',
                description: 'With offices in Sydney, Australia and Virginia, USA, DroneShield is a worldwide leader in drone detection technology. Our leadership brings world-class expertise in engineering and physics, combined with nearly 20 years of experience in defense, intelligence, and aerospace. We design detection systems that use highly specialized technology to achieve levels of precision and sensitivity that are not possible with other methods.
DroneShield helps your security force identify unauthorized drones using real-time alerts and digital evidence collection. An enterprise-grade sensor network with our patent-pending acoustic detection technology can sense drones that are invisible to radar or that lack radio-frequency links.
Listening: Our sensors recognize unique sound properties of common UAS types. They listen to surrounding activity and take a sound sample when they sense drone activity nearby.
Analysis: DroneShield compares the sample to our database of acoustic signatures. If it finds a match, the system issues an alert and records identifying information about the aircraft.
Identification: Our extensive database makes it possible for DroneShield to distinguish UASs from everyday sources of noise. This allows us to detect drones with high accuracy, delivering low false-alarm rates.
Alerts: Instant alerts are delivered independently through a variety of methods, including SMS, email, or existing video or incident management systems. DroneShield easily integrates into your established security system.
Our detection products also include a browser-based visual interface, giving you live visibility to surrounding acoustic activity.')

POSITIONS = %w(Full-Time Part-Time Intern Contract)
250.times do
  title = Faker::Name.title
  company_id = rand(17) + 1
  position = POSITIONS.sample
  d_array = []
  8.times { d_array << Faker::Company.bs }
  description = d_array.join(' \n ')
  Posting.create!(title: title, company_id: company_id, position: position, description: description)
end

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

17.times do |companyId|
  numUsers = rand(75)
  numUsers.times do |userId|
    rating = rand(5) + 1
    current_employee = [true, false].sample
    job_title = Faker::Name.title
    title = Faker::Business.review_title
    pros = Faker::Business.pros
    cons = Faker::Business.cons
    advice = Faker::Business.advice
    Review.create!(user_id: userId + 1, company_id: companyId + 1, rating: rating,
                   current_employee: current_employee, job_title: job_title,
                   pros: pros, cons: cons, advice: advice, title: title)
  end
end
