# API Endpoints

## HTML API

#### Root
- `GET /` - loads React web app

## JSON API

#### Users
- `POST /api/users`
- `PATCH /api/users`
- `DELETE /api/users`

#### Session
- `POST /api/session`
- `DELETE /api/session`
- `GET /api/session`

#### Postings
- `GET /api/postings`
  - Postings index / search
  - has area/industry/company param to pull up particular class of postings
- `POST /api/postings`
- `GET /api/postings/:id`
- `PATCH /api/postings/:id`
- `DELETE /api/postings/:id`

#### Companies
- `GET /api/companies`
  - Companies index/search
  - has area/industry/name param to pull up subset of companies
- `POST /api/companies`
- `GET /api/companies/:id`
- `DELETE /api/companies/:id`
- `PATCH /api/companies/:id`
- `GET /api/companies/:company_id/reviews`
- `GET /api/companies/:company_id/salaries`

#### Reviews
- `POST /api/reviews`
- `PATCH /api/reviews/:id`
- `DELETE /api/reviews/:id`

#### Salaries
- `GET /api/salaries`
  - Salaries index/search
  - has area/title/industry/company params to slice salaries
- `POST /api/salaries`
- `PATCH /api/salaries/:id`
- `DELETE /api/salaries/:id`
