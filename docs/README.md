# easyHire Development ReadMe
*alternative title: Glassifieds*

Heroku Link (*coming soon*)

[Trello Link](https://trello.com/b/5u81Jng8)

## Minimum Viable Product

This web application is a clone of the popular job-hunting website Glassdoor,
built using Ruby on Rails and React/Redux. Over the next two weeks, the app will
support the following (all with bug-free navigation, great styling, and adequate seed data):

- [x] Hosting on Heroku
- [ ] New account creation, login, guest demo login for both employers and seekers
- [ ] Seekers can view, save, and apply to postings made by Employers
- [ ] Seekers can search for jobs and companies
- [ ] Companies will have a profile page that lists information, openings, and reviews for the company
- [ ] Employers can create new postings
- [ ] Production README

## Design Docs

- [View Wireframes](docs/wireframes)
- [Components](docs/components)
- [Sample state](docs/sample-state.md)
- [API endpoints](docs/api-endpoints.md)
- [Schema](docs/schema.md)

## Implementation Timeline

### Phase 1: Backend Setup and Front End User Authentication (2 days)
**Goal:** Fully functioning rails app with front end auth (2 user types)
### Phase 2: Postings Model / API / Components (2 days)
**Goal:** Postings CRUD by Employers, and Apply by Seekers
### Phase 3: Company Profile (1 day)
**Goal:** Company Profile, with description and list of openings
### Phase 4: Company Reviews/Ratings (1 day)
**Goal:** Company Review CRUD, tied into company profile
### Phase 4: Search Functionality and Filters (2 days)
**Goal:** Ability to search by job, company, or position to see openings
### Bonus Features:
**Goal:** Implement as many of following as possible with remaining time.
- [ ] Salaries: Add salary data for positions / industries.
- [ ] Social: Seekers can send messages to each other
- [ ] Seekers: See advanced data about salaries / openings
- [ ] Seekers: File Upload / Resume Version management (pick which resume to apply with)
- [ ] Employers: See aggregate data for all applicants, along with advanced posting performance.
- [ ] Add Email alert functionality
