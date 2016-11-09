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

Company.create!(name: 'Google',
                size: '10,001+' ,
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

Posting.create!(company_id: 1, title: 'Staff Network Engineer', position: 'Full-Time',
                description: 'Network Engineer Job Duties:

Establishes networking environment by designing system configuration; directing system installation; defining, documenting, and enforcing system standards.
Maximizes network performance by monitoring performance; troubleshooting network problems and outages; scheduling upgrades; collaborating with network architects on network optimization.
Secures network system by establishing and enforcing policies; defining and monitoring access.
Updates job knowledge by participating in educational opportunities; reading professional publications; maintaining personal networks; participating in professional organizations.
Accomplishes information systems and organization mission by completing related results as needed.
Reporting network operational status by gathering, prioritizing information; managing projects.
Network Engineer Skills and Qualifications:

Tracking Budget Expenses, Project Management, Problem Solving, LAN Knowledge, Proxy Servers, Networking Knowledge, Network Design and Implementation, Network Troubleshooting, Network Hardware Configuration, Network Performance Tuning, People Management')
Posting.create!(company_id: 1, title: 'Self Driving Car Operator', position: 'Full-Time',
                description: 'Truck Driver Job Duties:

Accomplishes organization goals by accepting ownership for accomplishing new and different requests; exploring opportunities to add value to job accomplishments.
Updates job knowledge by participating in educational opportunities; reading professional publications; maintaining personal networks; participating in professional organizations.
Truck Driver Skills and Qualifications:

Teamwork, Emphasizing Excellence, Initiative, Leadership, Customer Service, Listening, Supply Management, Reporting Skills, Presentation Skills, Verbal Communication, Written Communication')
Posting.create!(company_id: 2, title: 'Teaching Assistant', position: 'Full-Time',
                description: "Tasks

Discuss assigned duties with classroom teachers in order to coordinate instructional efforts.
Prepare lesson materials, bulletin board displays, exhibits, equipment, and demonstrations.
Present subject matter to students under the direction and guidance of teachers, using lectures, discussions, or supervised role-playing methods.
Tutor and assist children individually or in small groups in order to help them master assignments and to reinforce learning concepts presented by teachers.
Supervise students in classrooms, halls, cafeterias, school yards, and gymnasiums, or on field trips.
Conduct demonstrations to teach such skills as sports, dancing, and handicrafts.
Distribute teaching materials such as textbooks, workbooks, papers, and pencils to students.
Distribute tests and homework assignments, and collect them when they are completed.
Enforce administration policies and rules governing students.
Grade homework and tests, and compute and record results, using answer sheets or electronic marking devices.
Instruct and monitor students in the use and care of equipment and materials, in order to prevent injuries and damage.
Observe students' performance, and record relevant data to assess progress.
Organize and label materials, and display students’ work in a manner appropriate for their eye levels and perceptual skills.
Organize and supervise games and other recreational activities to promote physical, mental, and social development.
Participate in teacher-parent conferences regarding students’ progress or problems.
Plan, prepare, and develop various teaching aids such as bibliographies, charts, and graphs.
Prepare lesson outlines and plans in assigned subject areas, and submit outlines to teachers for review.
Provide extra assistance to students with special needs, such as non-English-speaking students or those with physical and mental disabilities.
Take class attendance, and maintain attendance records.
Assist in bus loading and unloading.
Assist librarians in school libraries.
Attend staff meetings, and serve on committees as required.
Carry out therapeutic regimens such as behavior modification and personal development programs, under the supervision of special education instructors, psychologists, or speech-language pathologists.
Collect money from students for school-related projects.
Laminate teaching materials to increase their durability under repeated use.
Maintain computers in classrooms and laboratories, and assist students with hardware and software use.
Monitor classroom viewing of live or recorded courses transmitted by communication satellites.
Operate and maintain audiovisual equipment.
Provide disabled students with assistive devices, supportive technology, and assistance accessing facilities such as restrooms.
Requisition and stock teaching materials and supplies.
Type, file, and duplicate materials.
Use computers, audiovisual aids, and other equipment and materials to supplement presentations.")
Posting.create!(company_id: 2, title: 'Student', position: 'Full-Time',
                description: 'Learn to code in 12 weeks, guaranteed.')
Posting.create!(company_id: 3, title: 'Beta Tester', position: 'Full-Time',
                description: 'Beta testing is a lot of fun. Trying out cool, new, unreleased products and giving your opinions directly to the people developing it, all in an effort to make it flawless before it’s released to the world — what isn’t fun about that?

However, it’s easy to get absorbed with playing around with a new gadget and lose track of what the company expects of you as a tester. Below are the seven main responsibilities you have as a beta tester in one of our projects. Keeping these in mind throughout the test and making sure you complete them will both make you a great tester and ensure that you get your incentive at the end of the test.

1. Log in at least once a day
Given that beta tests are often short, it’s important that you log in every day during the test to report your experiences with the product. This also gives you the opportunity to check for announcements, read through other testers’ feedback, and contribute to the group’s discussion of the product. If you’re a regular in the community, this should only take you a few minutes to simply drop in and see what’s going on in the test.

2. Protect the secrecy of the test
The coolest part about beta testing is being the first to get your hands on a new product. However, this privilege comes with great responsibility, since the company doesn’t want information about their product leaked before they’re ready. Once you’ve signed an NDA, you’re expected to keep everything about the test and the product confidential. This means no sharing your thoughts or experiences on social media or blogs, even after the test is over. Otherwise you risk being banned from all future tests and incurring the wrath of the company’s legal department.

3. Continuously provide feedback
Beta testing is all about YOUR opinions and impressions of the product, so it’s important to provide feedback regularly. When it comes to bug reports or feature requests, submit them as soon as you discover them. Also, if you submit a problem during the test and the beta manager follows up with you asking for more information, be sure to respond as soon as you can. The more time you give the development team to work on fixing a problem, the better. Remember, your ideas and opinions are the main reason companies run beta tests, so don’t be afraid to share anything that’s on your mind.

4. Complete all tasks and surveys
You’ll be asked to complete surveys and perform specific tasks during a beta test. Complete these activities as soon as you have the opportunity. Companies often like to collect information during a specific stage of the user’s experience (such as after the initial installation) or in response to a specific piece of feedback they’ve received. Completing surveys and tasks quickly will help them get the information they need at the right time so they can make important product decisions.

5. Engage in discussions and submit journals
Even if you aren’t running into bugs, you can still contribute to the beta test on a daily basis through discussion forums and daily journals. Discussion forums allow you to build on or flesh out other testers’ contributions and daily journals give you the chance to reflect on your experience with the product that day. Both provide valuable insight for the company into what testers think about the product.

6. Return all of the test materials afterwards
Sometimes you’ll get to keep the product at the end of the test, however, you should never assume this will be the case. Beta hardware and software is often not stable enough for customers to use long-term. Always assume that you’re going to have to return all of the beta materials (including the product and any packaging/directions that came with it) at the end of the test. If you don’t, you’re violating the NDA and Beta Participant Agreement you signed at the beginning of the test, which could have serious ramifications.

7. Communicate with your beta manager
A lot can happen during a beta test. If you need help or have to leave the test, let your beta manager know. Our beta managers want to make sure you can test successfully and are here to help. We also understand that life is unpredictable and something may come up that keeps you from being able to fulfill your duties as a tester. Keep us in the loop so we can help you determine the best plan.

Beta testing products is a big responsibility. Sometimes testers don’t understand the huge role they play in launching a successful product. If you take these responsibilities seriously and contribute continuously during the beta test, you’ll be sure to get the most out of your beta testing experience and become one of the top testers in our community.')
Posting.create!(company_id: 3, title: 'Production Engineer', position: 'Full-Time',
                description: 'As a production engineer, you will be required to make the production process as efficient as possible. You will achieve this by using various principles of engineering, technology, manufacturing and management science. It is a vocation that has significant overlap with manufacturing and industrial engineering.

If you have superb knowledge of the entire manufacturing process from start to finish and you enjoy the challenge of responding quickly to emergencies, a career as a production engineer could be just what you need.')
Posting.create!(company_id: 3, title: 'Market Analyst', position: 'Full-Time',
                description: "Responsible for performing research and providing insights regarding the market, trends, competitors, potential and existing customers, and current campaigns.
Primary responsibilities

Examine a campaign's return on investment.
Identify new market opportunities.
Complete concept-testing for new products.
Perform extensive market research.
Determine brand perceptions and reputations.
Evaluate market penetration.
Develop groups and solicit customer feedback.
Analyze marketing metrics to identify cause and effect relationships.
Identify positive financial outcomes to increase profitability.
Create databases and capture market data.
Analyze competitors.
Assess client's promotional needs.
Evaluate demographics, prices, distribution channels, and marketing outlets.
Develop sales strategies in tandem with marketing department.
Meet with clients to ascertain marketing goals.
Create questionnaires and surveys.
Conduct secondary research, including finding information from industry associations, statisticians and marketing experts.
Generate reports that analyze competition and customers.
Offer insights about product potentials.
Be familiar with advanced statistical analysis and research methodologies, along with common computer programs.")
Posting.create!(company_id: 4, title: 'VR Experience Engineer', position: 'Full-Time',
                description: '
EVERYDAY VIEW

Build virtual reality apps from the ground up for iOS, Android and Desktop using Unity and C#
Integrate with social networking, gaming services, and back-end servers
Research and implement new and innovative ways of using mobile for VR storytelling
Collaborate with artists and designers to help develop new features, and contribute original ideas towards all aspects of production and development
Produce production-quality code
Analyze code performance and architect optimizations
Provide technical leadership in areas of specialization and assist other engineers with technical questions
Keep up to date with the technological developments and advancements in virtual reality')
Posting.create!(company_id: 4, title: 'Supply Chain Coordinator', position: 'Full-Time',
                description: 'A Supply Chain Coordinator is responsible for the supervision of the inbound and outbound traffic, managing the buying and delivery process of goods or services and the placement and delivery of purchase orders. This is a very high profile and responsible role within an organisation, requiring someone who is extremely organised and can cope well under pressure.

Working within the Supply Chain industry can be very rewarding and there are many opportunities to develop a career that includes progression into senior Supply Chain Management. This industry is well suited to someone who is highly motivated and has the drive and enthusiasm in what can be sometimes be a very challenging environment.

')
Posting.create!(company_id: 5, title: 'Research Technician', position: 'Full-Time',
                description: 'Scientific laboratory technicians carry out the work that allows scientists to concentrate on, and perform, the more complex analytical processes in the laboratory.

Tasks can vary depending on the specific employer but typically involve:

performing laboratory tests in order to produce reliable and precise data to support scientific investigations;
carrying out routine tasks accurately and following strict methodologies to carry out analyses;
preparing specimens and samples;')
Posting.create!(company_id: 5, title: 'Lab Manager', position: 'Part-Time',
                description: 'Serves patients by providing medical laboratory diagnostic and therapeutic information, products, and services.


Laboratory Manager Job Duties:

Provides medical laboratory diagnostic and therapeutic information, products, and services by establishing specimen preparation procedures; developing and implementing analytical procedures; evaluating laboratory information; consulting with pathologists; reporting results according to protocols mandated by the hospital and public health department.
Maintains medical laboratory equipment performance by establishing quality standards; developing operations, quality, and troubleshooting procedures; ensuring staff compliance; certifying instrument performance; arranging equipment replacement, service, and repair.
Maintains medical laboratory supplies inventory by checking stock to determine inventory level; anticipating needed supplies; placing and expediting orders for supplies; verifying receipt of supplies.')
Posting.create!(company_id: 5, title: 'Intern', position: 'Part-Time',
                description: 'We are seeking a Public Relations Intern, who is full of creative ideas and eager to contribute on a large scale. The intern will gain visibility into the inner workings and aspects of the public relations field, provide concrete deliverables and learn from top to bottom. When the internship is completed you will be ready to enter any fast paced PR firm.

')
Posting.create!(company_id: 6, title: 'Intern', position: 'Part-Time',
                description: "Are you obsessed with finding and sharing stories online?  Do your friends look to you on Facebook and Twitter for the latest trends, ideas, and online memes?   Social Media Corp is based in San Francisco and one of the premier websites for sharing online content.  With over 15 million monthly unique visitors and many of the world's biggest companies, from SONY to the NFL, using the site ever day, we are looking to transform how the world discovers and promotes news.

Social Media Corp has a fast paced work environment and we seek talented employees who crave learning new skills and aren't afraid to tackle big projects.  As an intern you will get to work with a variety of our staff, while working on real projects that will help us grow.

Our ideal candidate is someone who walks into a room of people and can’t leave without making a few friends. Someone who is obsessed with social media and is creative and thoughtful when interacting with online communities and building relationships.

")
Posting.create!(company_id: 6, title: 'AI Programmer', position: 'Full-Time',
                description: 'This person works under the direction of the lead programmer and is responsible for determining an agent’s behavior: the actions taken by the non-player characters. The AI programmer creates code and algorithms for pathfinding, group movement and cooperation, tactical strategy, and camera control. He or she sets patterns and parameters for state mechanics (rules) and establishes how an agent thinks and solves problems, creating a framework for artificial emotions and ideas. The exact scope of an AI programmer’s job varies from one studio to the next—in some cases, object collisions fall to the AI programmer; in others, this task may be assigned to a physics specialist. During development, the programmer will work closely with designers to implement the necessary processes to make combat possible, establish decision trees for opponents, and create neural networks. He or she also cooperates with game testers to identify bugs and insert the appropriate fixes.')
Posting.create!(company_id: 6, title: 'Data Engineer', position: 'Full-Time',
                description: 'We are looking for a Big Data Engineer that will work on the collecting, storing, processing, and analyzing of huge sets of data. The primary focus will be on choosing optimal solutions to use for these purposes, then maintaining, implementing, and monitoring them. You will also be responsible for integrating them with the architecture used across the company.

')
Posting.create!(company_id: 6, title: 'Electrical Engineer', position: 'Full-Time',
              description: 'Electrical engineers can work in various areas including power generation, building services and transport.

Responsibilities vary greatly according to the size and type of employer. However, typical duties may include:

using computer-aided design and engineering software to create project plans and circuit diagrams
designing and overseeing the installation of electrical systems in buildings
agreeing project specifications, budgets and timescales with clients and managers
undertaking relevant research
implementing designs')
Posting.create!(company_id: 6, title: 'UX Designer', position: 'Full-Time',
                description: 'We are looking for a user-experience designer responsible for conceiving and conducting user research, interviews and surveys, and translating them into sitemaps, wireframes and prototypes. You will also design the overall functionality of the product and iterate upon it to ensure a great user experience. ')
Posting.create!(company_id: 6, title: 'Copywriter', position: 'Full-Time',
                description: 'Creative copywriters are employed by agencies both permanently and on a freelance basis to develop advertising concepts. They mainly deliver the words and verbal content that accompanies the visual elements. Agency copywriters usually work in close partnership with art directors and have lots of input to the visual elements. Many advertising agencies appoint them as a creative team.')
Posting.create!(company_id: 7, title: 'Rollercoaster Tycoon', position: 'Full-Time',
                description: 'Accomplishes finance human resource strategies by determining accountabilities; communicating and enforcing values, policies, and procedures; implementing recruitment, selection, orientation, training, coaching, counseling, disciplinary, and communication programs; planning, monitoring, appraising, and reviewing job contributions; planning and reviewing compensation strategies.
Develops finance organizational strategies by contributing financial and accounting information, analysis, and recommendations to strategic thinking and direction; establishing functional objectives in line with organizational objectives.
Establishes finance operational strategies by evaluating trends; establishing critical measurements; determining production, productivity, quality, and customer-service strategies; designing systems; accumulating resources; resolving problems; implementing change.
Develops organization prospects by studying economic trends and revenue opportunities; projecting acquisition and expansion prospects; analyzing organization operations; identifying opportunities for improvement, cost reduction, and systems enhancement; accumulating capital to fund expansion.
Develops financial strategies by forecasting capital, facilities, and staff requirements; identifying monetary resources; developing action plans.
Monitors financial performance by measuring and analyzing results; initiating corrective actions; minimizing the impact of variances.
Maximizes return on invested funds by identifying investment opportunities; maintaining relationships with the investment community.
Reports financial status by developing forecasts; reporting results; analyzing variances; developing improvements.
Updates job knowledge by remaining aware of new regulations; participating in educational opportunities; reading professional publications; maintaining personal networks; participating in professional organizations.
Accomplishes finance and organization mission by completing related results as needed.
Chief Financial Officer Skills and Qualifications:

Financial Planning and Strategy, Managing Profitability, Strategic Planning, Vision, Quality Management, Promoting Process Improvement, Forecasting, Corporate Finance, Developing Budgets, Financial Skills, Dealing with Complexity')
Posting.create!(company_id: 7, title: 'Ride Tester', position: 'Part-Time',
                description: 'Duties:
                Accomplishes quality assurance human resource objectives by recruiting, selecting, orienting, training, assigning, scheduling, coaching, counseling, and disciplining employees; communicating job expectations; planning, monitoring, appraising, and reviewing job contributions; planning and reviewing compensation actions; enforcing policies and procedures.
Achieves quality assurance operational objectives by contributing information and analysis to strategic plans and reviews; preparing and completing action plans; implementing production, productivity, quality, and customer-service standards; identifying and resolving problems; completing audits; determining system improvements; implementing change.
Meets quality assurance financial objectives by estimating requirements; preparing an annual budget; scheduling expenditures; analyzing variances; initiating corrective actions.
Develops quality assurance plans by conducting hazard analyses; identifying critical control points and preventive measures; establishing critical limits, monitoring procedures, corrective actions, and verification procedures; monitoring inventories.
Validates quality processes by establishing product specifications and quality attributes; measuring production; documenting evidence; determining operational and performance qualification; writing and updating quality assurance procedures.
Maintains and improves product quality by completing product, company, system, compliance, and surveillance audits; investigating customer complaints; collaborating with other members of management to develop new product and engineering designs, and manufacturing and training methods.
Prepares quality documentation and reports by collecting, analyzing and summarizing information and trends including failed processes, stability studies, recalls, corrective actions, and re-validations.
Updates job knowledge by studying trends in and developments in quality management; participating in educational opportunities; reading professional publications; maintaining personal networks; participating in professional organizations.
Enhances department and organization reputation by accepting ownership for accomplishing new and different requests; exploring opportunities to add value to job accomplishments.
Quality Assurance Technician Skills and Qualifications:

Process Improvement, Analyzing Information , Strategic Planning, Verbal Communication, Informing Others, Quality Engineering, Emphasizing Excellence, Pharmacology, Attention to Detail, Thoroughness, Dealing with Complexity')
Posting.create!(company_id: 7, title: 'Marketing Director', position: 'Full-Time',
                description: 'Marketing Director Job Responsibilities:

Develops marketing strategy by studying economic indicators; tracking changes in supply and demand; identifying customers and their current and future needs; monitoring the competition.


Marketing Director Job Duties:

Contributes to marketing effectiveness by identifying short-term and long-range issues that must be addressed; providing information and commentary pertinent to deliberations; recommending options and courses of action; implementing directives.
Obtains market share by developing marketing plans and programs for each product; directing promotional support.
Maintains relations with customers by organizing and developing specific customer- relations programs; determining company presence at conventions, annual meetings, trade associations, and seminars.
Provides short- and long-term market forecasts and reports by directing market research collection, analysis, and interpretation of market data.
Influences present and future products by determining and evaluating current and future market trends.
Develops new uses for existing products by analyzing statistics regarding market development; acquiring and analyzing data; consulting with internal and external sources.
Maintains research database by identifying and assembling marketing information.
Provides marketing information by answering questions and requests.
Achieves financial objectives by preparing an annual budget; scheduling expenditures; analyzing variances; initiating corrective actions.
Completes marketing department operational requirements by scheduling and assigning employees; following up on work results.
Maintains marketing staff by recruiting, selecting, orienting, and training employees.
Maintains marketing staff job results by counseling and disciplining employees; planning, monitoring, and appraising job results.
Develops marketing staff by providing information, educational opportunities, and experiential growth opportunities.
Maintains professional and technical knowledge by attending educational workshops; reviewing professional publications; establishing personal networks; participating in professional societies.
Contributes to team effort by accomplishing related results as needed.
Marketing Director Skills and Qualifications:

Client Relationships, Coaching, Managing Processes, Self-Motivated, Marketing Plan, Subordinate Involvement, Customer Focus, Marketing Research, Statistical Analysis, Developing Budgets, Financial Planning and Strategy

')

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
