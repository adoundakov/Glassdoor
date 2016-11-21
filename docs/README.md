# easyHire Development ReadMe

[Heroku Link](http://www.easy-hire.me)
[Trello Link](https://trello.com/b/5u81Jng8)

## Minimum Viable Product

This web application is inspired by the popular job application website Glassdoor,
built using Ruby on Rails and React/Redux. Over the next two weeks, the app will
support the following (all with bug-free navigation, great styling, and adequate seed data):

- [x] Hosting on Heroku
- [x] New account creation, login, guest demo login for job seekers
- [x] Seekers can view, save, and apply to postings made by Employers
- [x] Seekers can search for jobs and companies
- [x] Companies will have a profile page that lists information, openings, and reviews for the company
- [x] Seekers can create reviews for companies.
- [x] Users not wishing to sign up can use the site as a guest
- [x] Production README

## Design Docs

- [View Wireframes](docs/wireframes)
- [Components](docs/components)
- [Sample state](docs/sample-state.md)
- [API endpoints](docs/api-endpoints.md)
- [Schema](docs/schema.md)

## Implementation Timeline

### Phase 1: Backend Setup and Front End User Authentication (2 days)
**Goal:** Fully functioning rails app with front end auth (seeker account type only)
### Phase 2: Postings Model / API / Components (2 days)
**Goal:** Seekers can browse and apply for postings, and see detailed info about each opening
### Phase 3: Company Profile (1 day)
**Goal:** Company Profile, with description and list of openings
### Phase 4: Company Reviews/Ratings (1 day)
**Goal:** Company Review CRUD, tied into company profile
### Phase 5: Search Functionality and Filters (2 days)
**Goal:** Ability to search by job, company, or position to see openings
### Bonus Features:
**Goal:** Implement as many of following as possible with remaining time.
- [ ] Seekers: Filter Jobs / Companies by properties
- [ ] Salaries: Add salary data for positions / industries
- [ ] Seekers: See advanced data about salaries / openings
- [ ] Seekers: File Upload / Resume Version management (pick which resume to apply with)
- [ ] Employers: Postings CRUD, with employer account creation (maybe company verification?)
- [ ] Employers: See aggregate data for all applicants, along with advanced posting performance.
