# easyHire Development ReadMe
*alternative title: Glassifieds*

Heroku Link (*coming soon*)

[Trello Link](https://trello.com/b/5u81Jng8)

## Minimum Viable Product

This web application is a clone of the popular job-hunting website Glassdoor,
built using Ruby on Rails and React/Redux. Over the next two weeks, the app will
support the following (all with bug-free navigation, great styling, and adequate seed data):

- [ ] Hosting on Heroku
- [ ] New account creation, login, guest demo login for both employers and seekers
- [ ] Seekers can view, save, and apply to postings made by Employers
- [ ] Seekers can search for jobs, companies, and salaries
- [ ] Employers can create new postings, and see the performance of their postings over time.
- [ ] Seekers can send other seekers messages (Bonus)
- [ ] Seekers can see advanced data about areas (Bonus)
- [ ] Posters can see aggregate data about applicants to positions (Bonus)
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
### Phase 3: Company Profile, Review Model / API / Components (2 days)
**Goal:** Company Profile and Review CRUD for Seekers
### Phase 4: Salary Functionality and Search (2 days)
**Goal:** Ability to search by job, company, or position to see openings and compare salaries
### Bonus Features:
**Goal:** Implement as many of following as possible with remaining time.
- [ ] Social: Seekers can send messages to each other
- [ ] Seekers: See advanced data about salaries / openings
- [ ] Seekers: File Upload / Resume Version management (pick which resume to apply with)
- [ ] Employers: See aggregate data for all applicants, along with advanced posting performance.
- [ ] Add Email alert functionality
