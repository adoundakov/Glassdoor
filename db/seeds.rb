# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).


User.create!(username: 'guestSeeker', email: 'someone@example.com', password: '123456')
User.create!(username: 'alexSeeker', email: 'alex@aol.com', password: '123456')
User.create!(username: 'alexPoster', email: 'alex@employer.io', password: '123456', is_employer: true, company_id: 1)
175.times do |num|
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
                description: "Google is a multinational corporation that is specialized in internet-related services and products. The company’s product portfolio includes Google Search, which provides users with access to information online; Knowledge Graph that allows users to search for things, people, or places as well as builds systems recognizing speech and understanding natural language; Google Now, which provides information to users when they need it; Product Listing Ads that offer product image, price, and merchant information;  AdWords, an auction-based advertising program; AdSense, which enables websites that are part of the Google Network to deliver ads; Google Display, a display advertising network; DoubleClick Ad Exchange, a marketplace for the trading display ad space; and YouTube that offers video, interactive, and other ad formats.
Additionally, the company offers Android, an open-source mobile software platform; hardware products, including Chromebook, Chrome, Chromecast, and Nexus devices; Google+ , a social platform for sharing content with others; Google Play, a cloud-based digital entertainment store for apps, music, books, and movies; Google Drive, a place for users to create, share, collaborate, and keep their stuff; and Google Wallet, a virtual wallet for in-store contactless payments. Further, it provides Google Apps, which include Gmail, Calendar, and Google Sites that are built for people to work anywhere, anytime, on any device without loss of security or control; Google Maps Application Programming Interface; Google Earth Enterprise, a software solution for imagery and data visualization; Google App Engine, a Platform-as-a-service; Google Cloud Storage; Google BigQuery for real-time analytics; Google Cloud SQL for structured query language; and Google Compute Engine, an Infrastructure-as-a-service-Platform. It also offers mobile wireless devices, and related products and services.
Google was founded by Larry Page and Sergey Brin in 1996 while they were Ph.D. students at Stanford University.")
Company.create!(name: 'App Academy',
                size: '51-200',
                ceo: 'Ned Ruggeri',
                logo_url: 'http://haseebq.com/wordpress/wp-content/uploads/2015/05/aa.png',
                cover_url: 'https://cdn.evbuc.com/eventlogos/33308251/appacademylogo.png',
                location: 'San Francisco, CA',
                company_url: 'www.appacademy.io',
                description: "App Academy is a software development school that seeks to change what people expect from education. App Academy offers a variety of training programs, including a 12-week immersive coding and job placement program, where 98% of graduates have been placed in software development roles at an average salary of $105,000 in San Francisco and $89,000 in New York City.")
Company.create!(name: 'nVidia',
                size: '5,001-10,000',
                ceo: 'Jen-Hsun Huang',
                logo_url: 'http://fullhdpictures.com/wp-content/uploads/2015/12/Nvidia-Logo-HD.jpg',
                cover_url: 'https://i.ytimg.com/vi/qMnYkH4Eiy4/maxresdefault.jpg',
                location: 'Santa Clara, CA',
                company_url: 'www.nvidia.com',
                description: "Nvidia specializes in the manufacture of graphics-processor technologies for workstations, desktop computers, and mobile devices. The company, based in Santa Clara, California, is a major supplier of integrated circuits used for personal-computer motherboard chipsets, graphics processing units (GPUs), and game-consoles.")
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

Company.create!(name: 'Ducky Channel',
                size: '201-500',
                ceo: 'not found',
                logo_url: 'https://crunchbase-production-res.cloudinary.com/image/upload/c_pad,h_140,w_140/v1423045081/lsjtusvfrjzafba2a40u.png',
                cover_url: 'https://static1.squarespace.com/static/52f7e010e4b0b0787ce07b19/t/56afc85c2b8dded389a2b4e8/1454360673633/',
                location: 'Taipei, TW',
                company_url: 'http://www.duckychannel.com.tw/en/',
                description: "DuckyChannel International Co. was established in 1998, the initial goal of operation strategies targeted at the agent and distributor of computer peripherals. What They were agent for are now most of the world's leading manufacturers of computer peripheral products, such as Japan EIZO high-quality screen. Years of hard work has contributed to Ducky’s foundation of the brand of its own in 2008 and became one of Taiwan’s top manufacturers. It has committed itself to delivering high-standard professional mechanical keyboard, and insisted to offer items with the best quality. Moreover, it keeps on developing the new products from the old ones. So far, They have promoted our products internationally, and had cooperation partners in many countries.")

Company.create!(name: 'CrowdTangle',
                size: '11-50',
                ceo: 'Brandon Silverman',
                logo_url: 'https://crunchbase-production-res.cloudinary.com/image/upload/c_pad,h_140,w_140/v1467310819/ju4v65hhdijzemqtmr8f.png',
                cover_url: 'https://s3.amazonaws.com/owler-image/logo/crowdtangle_owler_20160803_170651_original.png',
                location: 'Baltimore, MD',
                company_url: 'http://crowdtangle.com',
                description: 'CrowdTangle makes it incredibly easy to find & track content on the social web.')

Company.create!(name: 'Facebook',
                size: '10,001+',
                ceo: 'Mark Zuckerberg',
                logo_url: 'https://crunchbase-production-res.cloudinary.com/image/upload/c_pad,h_140,w_140/v1408491700/ypqf483smhnqo0rh6mff.png',
                cover_url: 'http://coverlayout.com/facebook/covers/facebook_logo/facebook_logo.jpg',
                location: 'Menlo Park, CA',
                company_url: 'www.facebook.com',
                description: 'Facebook is an online social networking service that allows its users to connect with friends and family as well as make new connections. It provides its users with the ability to create a profile, update information, add images, send friend requests, and accept requests from other users. Its features include status update, photo tagging and sharing, and more.
Facebook’s profile structure includes a timeline, information related to the user, images of the user, images added by friends of the user, notes, pages, groups, and more. It enables its users to create pages related to entertainment, sports, business, finance, preferences, hobbies, culture, religion, causes, organizations, and a number of other categories. It also enables its users to join or create groups related to a vast number of categories.
With millions of more users, Friendster attempted to acquire the company for $10 million in mid-2004. Facebook turned down the offer and subsequently received $12.7 million in funding from Accel Partners at a valuation of around $100 million. Facebook continued to grow opening up to high school students in September 2005 and adding a photo sharing feature the next month. The next spring, Facebook received $25 million in funding from Greylock Partners and Meritech Capital as well as previous investors Accel Partners and Peter Thiel. The pre-money valuation for this deal was about $525 million. Facebook subsequently opened up to work networks eventually amassing over 20,000 work networks. Finally in September 2006, Facebook was opened to anyone with an email address.
Facebook continued to receive funding most notably in January 2011 receiving $1.5 billion and valuing the company at $50 billion. A year later in February 2012, Facebook announced that it was filing for its long-anticipated initial public offering. The company went public on May 18, 2012 opening in NASDAQ with shares trading at $42.05.
Facebook announced positive numbers in February 2012 upon filing for its IPO. As of July 2013 over 1.15 billion users have logged into Facebook every month and 669 million users daily. Mobile users now make up half of Facebook’s user base with 819 million monthly actives. Facebook is one of the most trafficked sites in the United States. Additionally, Facebook is the top photo sharing site with 250 million photos uploaded per day.
The company has strategic partnership with AXA Group to develop marketing and commercial collaboration in the digital, social, and mobile sphere.
Facebook is currently the owner of many applications and services such as Pagemodo Pagebuilder, RSS Graffiti, Huddle, and more. It is the world’s largest social network with over 1.32 billion monthly active users.
Facebook was founded by Mark Zuckerberg, Eduardo Saverin, Andrew McCollum, Dustin Moskovitz, and Chris Hughes on February 4, 2004 in Menlo Park, California.')

Company.create!(name: 'Mopio',
                size: '1-10',
                ceo: 'Hakan Ensari',
                logo_url: 'https://crunchbase-production-res.cloudinary.com/image/upload/c_pad,h_140,w_140/v1421947822/cuv5kc7wx7sir11939ac.png',
                cover_url: 'http://www.candid8marketing.com.au/wp-content/uploads/2014/07/linked-in-profile-writing-730x275.jpg',
                location: 'London, UK',
                company_url: 'www.mop.io',
                description: "Mopio is a fast and easy-to-use pricing service for Amazon merchants. We use real-time data to reprice sellers' listings in response to competing price changes.")

Company.create!(name: 'Tesla Motors',
                size: '51-200',
                ceo: 'Elon Musk',
                logo_url: 'https://crunchbase-production-res.cloudinary.com/image/upload/c_pad,h_140,w_140/v1459804290/mkxozts4fsvkj73azuls.png',
                cover_url: 'http://www.motocrit.com/wp-content/uploads/2013/07/Tesla-Cover.jpg',
                location: 'Palo Alto, CA',
                company_url: 'www.tesla.com',
                description: 'Tesla Motors was started by a group of Silicon Valley entrepreneurs and strives to create a revolution and accelerate the world’s transition to electric mobility with a full range of increasingly affordable electric cars. Tesla vehicles are EVs (electric vehicles), which are transforming the way people drive and move. Tesla has gone public as of June 29, 2010 and has a market cap of $2.47 billion (at $23.73 a share at 104.02 million shares). Tesla Motors’ goal is to increase the number and variety of EVs through three strategies. The first is to sell its own branded vehicle through its showrooms. Second is to sell premium, high-quality, patented electric components to other automakers. Lastly, it serves as a “catalyst and positive example to other automakers.” There has already been a movement in the EV market with the push of the GM Volt, rumored to have been inspired by the Tesla Roadster.')

Company.create!(name: 'Dropbox',
                size: '1,001-5,000',
                ceo: 'Drew Houston',
                logo_url: 'https://crunchbase-production-res.cloudinary.com/image/upload/c_pad,h_140,w_140/v1412848781/ub44kt96u00ampxwdoqh.png',
                cover_url: 'http://www.winbeta.org/wp-content/uploads/2015/09/Dropbox-hack-cover-780x445.png',
                location: 'San Francisco, CA',
                company_url: 'www.dropbox.com',
                description: "Dropbox's mission is to provide a home for everyone's most important information and bring it to life. We make it easy for hundreds of millions of people to access, share, and collaborate on their files so they can be more productive — at home and at work.
Dropbox is headquartered in San Francisco, with offices in Austin, New York, Seattle, Dublin (Ireland), Herzliya (Israel), London (United Kingdom), Sydney (Australia), and Tokyo (Japan).
Dropbox is the simple, powerful home for your photos, videos, docs, and other files. Your stuff is safe, accessible, and easily shared – no matter where you are. Any file you save to your Dropbox is automatically saved to all your computers, phones or tablets, and the Dropbox website. Plus Dropbox secures your files with AES-256 bit encryption and two-step verification.
Dropbox Pro provides unrivaled sync along with 1 TB of space, powerful sharing features, and increased control. Whether you’re a professor sending out lesson plans, a musician creating and sharing a new composition, or a consultant refining a proposal, Dropbox Pro is home for your passion and creativity.
Dropbox for Business combines the solution 300 million users trust to store, sync, and share files securely with the admin tools IT teams need to protect business data. With easy-to-use controls, IT admins can get full visibility over how critical work files are accessed and shared, while letting team members continue to use the tools they know and love.
Mailbox (acq. by Dropbox) is a simple, beautiful way to put email in its place. Users can swipe to archive, delete or snooze messages, making it easy to stay focused on what's important and reach inbox zero quickly.")

Company.create!(name: 'SpaceX',
                size: '1,001-5,000',
                ceo: 'Elon Musk',
                logo_url: 'https://crunchbase-production-res.cloudinary.com/image/upload/c_pad,h_140,w_140/v1452799337/hz7augn5hcboef6wjzox.png',
                cover_url: 'http://a57.foxnews.com/global.fncstatic.com/static/managed/img/fn2/feeds/Space.com/660/371/spacex-grasshopper.jpg?ve=1',
                location: 'Hawthorne, CA',
                company_url: 'www.spacex.com',
                description: "Space Exploration Technologies Corporation (SpaceX) is a space-transportation startup company founded by Elon Musk. It is developing the partially reusable launch vehicles Falcon 1 and Falcon 9. Originally based in El Segundo, SpaceX now operates out of Hawthorne, California, USA.
SpaceX was founded in June 2002 by Musk who had invested $100 million of his own money in the company as of March 2006. In January 2005, SpaceX bought a 10% stake in Surrey Satellite Technology Ltd.
SpaceX had 160 employees in November 2005, and more than 500 by July 2008. The launch crew in the Marshall Islands has 25 people, 6 in mission control. This small number, compared to similar space launch companies, is part of cost reduction. Musk sees other space-launch services' high prices as supporting unnecessary bureaucracy. He's stated that one of his goals is to improve the cost and reliability of access to space by a factor of ten.
Elon Musk stated after the failure of the third Falcon 1 flight attempt, \"As a precautionary measure to guard against the possibility of flight 3 not reaching orbit, SpaceX recently accepted a significant investment. Combined with our existing cash reserves, that ensures we will have more than sufficient funding on hand to continue launching Falcon 1 and develop Falcon 9 and Dragon\"; on August 4, SpaceX released further details; they had accepted a USD$20 million equity investment from the Founder's Fund.
Founded in 2002, the SpaceX team now numbers over 500, located primarily in Hawthorne, California, with four additional locations: SpaceX's Texas Test Facility in McGregor near Waco; offices in Washington DC; and launch facilities at Cape Canaveral, Florida, and the Marshall Islands in the Central Pacific.")

Company.create!(name: 'Logitech',
                size: '5,001-10,000',
                ceo: 'Bracken Darrell',
                logo_url: 'https://crunchbase-production-res.cloudinary.com/image/upload/c_pad,h_140,w_140/v1475254684/vpezfcrdsxmbmddsjgpl.jpg',
                cover_url: 'https://esncard.org/sites/default/files/pictures/erasmus_banner_1.png',
                location: 'Fremont, CA',
                company_url: 'www.logitech.com',
                description: "Logitech designs and manufactures personal peripherals for the needs of personal computer and laptop users.
The company offers computer accessories such as keyboards, webcams and headsets, personal computer and multimedia speakers, mice, trackballs, touchpad devices, and presenters; tablet and smartphone accessories; remotes and video security products for homes; gaming mice and controllers; conference cameras; wireless speakers and earphones; and products for business applications.
The company serves retail and original equipment manufacturer customers worldwide. It sells its products online.
Logitech was founded in 1981 and is headquartered in Fremont, California. It has additional offices in Silicon Valley, California; Lausanne, Switzerland; Hong Kong and Suzhou, China; Hsinchu, Taiwan; and Tokyo, Japan. It operates as a subsidiary of Logitech International SA.")

Company.create!(name: 'Glassdoor',
                size: '501-1,000',
                ceo: 'Robert Hohman',
                logo_url: 'https://crunchbase-production-res.cloudinary.com/image/upload/c_pad,h_140,w_140/v1476888835/idihqnalmechtwnboppa.png',
                cover_url: 'https://press-content.glassdoor.com/app/uploads/GD-logo-white-on-green.jpg',
                location: 'Mill Valley, CA',
                company_url: 'www.glassdoor.com',
                description: "Glassdoor, the most transparent jobs and recruiting marketplace, has a mission to help people everywhere find a job and company they love, by offering an inside look into what it's really like to work at hundreds of thousands of companies in 190 countries.
Founded in 2007, Glassdoor offers users the latest job listings, as well as access to millions of pieces of proprietary user-generated content including company-specific salary reports, company reviews and ratings, CEO approval ratings, benefits reviews, interview reviews and questions, office photos and more. In addition, thousands of employer clients and partners are using Glassdoor for Employers to support their recruiting and employment branding efforts. Glassdoor, which won the 2013 Webby Award for Best Employment Site, is one of the most popular mobile job apps on iOS and Android platforms.
Headquartered in Mill Valley, Calif., Glassdoor was founded by Richard Barton, Robert Hohman and Tim Besse and has raised approximately $200 million from Benchmark, Sutter Hill Ventures, Battery Ventures, DAG Ventures, Dragoneer Investment Group, Tiger Global Management, Google Capital, and funds and accounts advised by T. Rowe Price Associates, Inc.")

Company.create!(name: 'Twitch',
                size: '201-500',
                ceo: 'Emmett Shear',
                logo_url: 'https://crunchbase-production-res.cloudinary.com/image/upload/c_pad,h_140,w_140/v1475259321/bv2qlltonsln3ndrk8ws.png',
                cover_url: 'http://esportscenter.com/wp-content/uploads/2016/07/Twitch-Banner.jpg',
                location: 'San Francisco, CA',
                company_url: 'www.twitch.tv',
                description: 'Founded in June 2011, Twitch is social video for gamers. It is the world’s leading video platform and community for gamers where more than 100 million gather every month to broadcast, watch and talk about video games. Twitch’s video platform is the backbone of both live and on-demand distribution for the entire video game ecosystem. This includes game developers, publishers, media outlets, events, user generated content, and the entire esports scene. In February 2014, Wall Street Journal ranked Twitch as the 4th largest website in terms of peak internet traffic in the U.S. fortifying the brand as an entertainment industry leader and the epicenter of social video for gamers.')

Company.create!(name: 'Bungie',
                size: '501-1,000',
                ceo: 'Pete Parsons',
                logo_url: 'https://lh4.googleusercontent.com/-ussUl5v52dI/AAAAAAAAAAI/AAAAAAAAAPQ/yHAXrZOwEXI/s0-c-k-no-ns/photo.jpg',
                cover_url: 'http://savegameonline.com/wp-content/uploads/2014/04/bungie-banner.gif',
                location: 'Bellevue, WA',
                company_url: 'www.bungie.net',
                description: "Bungie, Inc. is an American video game developer located in Bellevue, Washington, United States. The company was established in May 1991 as Bungie Software Products Corporation by University of Chicago undergraduate student Alex Seropian, who later brought in programmer Jason Jones after publishing Jones' game Minotaur: The Labyrinths of Crete. Originally based in Chicago, Illinois, the company concentrated primarily on Macintosh games during its early years and created two very successful video game franchises called Marathon and Myth. A West Coast offshoot produced the PC and console title Oni.
Microsoft acquired Bungie in 2000; the project it was working on was repurposed into a launch title for Microsoft's Xbox console, called Halo: Combat Evolved. Halo became the Xbox's \"killer application\", selling millions of copies and spawning a billion dollar franchise. On October 5, 2007, Bungie announced that it had split from Microsoft and become a privately held independent company, Bungie LLC (Microsoft retained ownership of the Halo franchise IP).
Among Bungie's side projects are Bungie.net, the company's official website, which includes company information, forums, and statistics-tracking and integration with many of its games. Bungie.net also serves as the platform from which Bungie sells company-related merchandise out of the Bungie Store and runs other projects, including Bungie Aerospace, its charitable organization, the Bungie Foundation, a podcast, and online publications about game topics. The company is known for its informal and dedicated workplace culture, and recently signed a ten-year publishing deal with Activision. Their first project together was the 2014 first-person shooter, Destiny.[4]")

Company.create!(name: 'CD Projekt Red',
                size: '201-500',
                ceo: 'Marcin Iwinski',
                logo_url: 'https://crunchbase-production-res.cloudinary.com/image/upload/c_pad,h_140,w_140/v1397183516/cfe6968c4429ed3c65d86eda70b4d010.png',
                cover_url: 'http://gamewires.com/Images/Posts/17973_banner.jpg',
                location: 'Warsaw, PO',
                company_url: 'www.cdpred.com',
                description: 'CD Projekt RED started developing AAA games back in 2002. The studio received worldwide recognition thanks to its bestselling RPG brand “The Witcher”.
The first installment of the series hit the shelves in 2007 and The Witcher 2: Assassins of Kings had its premiere in May 2011. In April 2012 this game was released for Xbox 360, as the Enhanced Edition. Both games developed by CD Projekt RED received prestigious awards and are praised by both critics and gamers.
The studio works currently on two AAA titles: The Witcher 3: Wild Hunt and Cyberpunk 2077
CD Projekt RED is based in Warsaw (Poland) and employs a creative and international team of specialists from different fields: from programmers, animation and graphic designers to its own marketing team.')

Company.create!(name: 'NZXT',
                size: '51-200',
                ceo: 'Johnny Hou',
                logo_url: 'https://crunchbase-production-res.cloudinary.com/image/upload/c_pad,h_140,w_140/v1413279617/urcsdnlfw8jfvgauyooc.jpg',
                cover_url: 'http://media.gamersnexus.net/images/media/2016/cooler/kraken/nzxt-kraken-x42-2.jpg',
                location: 'California, MD',
                company_url: 'www.nzxt.com',
                description: "NZXT builds PC hardware for enthusiasts and gamers globally, they continue to grow and launch new products in the market year over year.
After nearly 10 years building great PC Hardware Products, they're also starting a new division to build the best PC monitoring software with integration to the cloud, web, and their hardware.")

Company.create!(name: 'Mionix',
                size: '11-50',
                ceo: 'Carl Silbersky',
                logo_url: 'https://crunchbase-production-res.cloudinary.com/image/upload/c_pad,h_140,w_140/v1397191823/84d5d6cb39ea01d424d9f370807663b4.png',
                cover_url: 'http://i1106.photobucket.com/albums/h377/HybridPrototype/MionixnetBanner.jpg',
                location: 'Malmo, SW',
                company_url: 'www.mionix.net',
                description: '
We strongly believe that gaming is heading down the same path as headphones and sneakers have previously taken. All things were originally based on function, in order to help people. Since then these items have become fashion-driven with functionality being taken for granted.
Gaming peripherals is by no means a new invention neither a new market. As e-sport has been experiencing double digit growth for the last 8 years the market has naturally boomed. And as gaming continues to grow in all age groups, reaching a larger and larger audience every year, diversification becomes more important.
Mionix does not perceive gamers to be teenagers that love “animal” branded, all black gaming peripherals. We see skaters, metal-heads, doctors, bikers – people from all walks of life that like to game, that care. A modern consumer that does not choose between function and fashion, but expects both.
The industry has been neglecting something far too long, something that for us is obvious. This is the very thing that Mionix brings to the gamer’s desktop.
We still see ourself as a start-up, a company with ridiculous high ambitions. We like to challenge the norm and reach for things that others deem unattainable. Setting trends in the here and now while extending into the future. That’s Mionix.
')


POSITIONS = %w(Full-Time Part-Time Intern Contract)
250.times do
  title = Faker::Name.title
  company_id = rand(31) + 1
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

31.times do |companyId|
  numUsers = rand(75) + rand(50)
  numUsers.times do |userId|
    rating = rand(5) + 1
    current_employee = [true, false].sample
    job_title = Faker::Name.title
    title = Faker::Business.review_title
    pros = Faker::Business.pros
    cons = Faker::Business.cons
    advice = Faker::Business.advice
    puts "Creating review with company:#{companyId}, title:#{job_title}"
    Review.create!(user_id: userId + 1, company_id: companyId + 1, rating: rating,
                   current_employee: current_employee, job_title: job_title,
                   pros: pros, cons: cons, advice: advice, title: title)
  end
end

200.times do |num|
  job_title = Faker::Name.title
  numUsers = 20
  numUsers.times do |userId|
    companyId = rand(31) + 1
    salary = rand(50000) + rand(50000) + rand(15000) + rand(15000)
    puts "Creating Salary with user:#{userId}, company:#{companyId}, salary:#{salary}, title:#{job_title}"
    Salary.create!(user_id: userId + 1, company_id: companyId, salary: salary, title: job_title)
  end
end
