# API Endpoints

## HTML API

#### Root
- `GET /` - loads React web app

## JSON API

#### Users
- `SHOW /api/users/:id`
- `POST /api/users`
- `PATCH /api/users`
- `DELETE /api/users`

#### Session
- `SHOW /api/session/:id`
- `POST /api/session`
- `DELETE /api/session`
- `GET /api/session`

#### Postings
- `GET /api/postings`
  - Postings index / search
- `POST /api/postings`
- `GET /api/postings/:id`
- `PATCH /api/postings/:id`
- `DELETE /api/postings/:id`

#### Companies
- `GET /api/companies`
  - Companies index/search
- `POST /api/companies`
- `GET /api/companies/:id`
- `DELETE /api/companies/:id`
- `PATCH /api/companies/:id`
- `GET /api/companies/:company_id/reviews`
- `GET /api/companies/:company_id/salaries`
- `GET /api/companies/:company_id/postings`

#### Reviews
- `POST /api/reviews`
- `PATCH /api/reviews/:id`
- `DELETE /api/reviews/:id`

#### Salaries
- `GET /api/salaries`
  - Salaries index/search
- `POST /api/salaries`
- `PATCH /api/salaries/:id`
- `DELETE /api/salaries/:id`
