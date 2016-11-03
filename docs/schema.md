# Schema Information

## Users
column name     | data type | details
----------------|-----------|-----------------------
id              | integer   | not null, primary key
username        | string    | not null, indexed, unique
email           | string    | not null, indexed, unique
password_digest | string    | not null
session_token   | string    | not null, indexed, unique
is_employer     | boolean   | not null, default: false
company_id      | integer   |

## Companies
column name     | data type | details
----------------|-----------|-----------------------
id              | integer   | not null, primary key
name            | string    | not null, indexed, unique
size            | string    | not null
ceo             | string    | not null
logo_url        | string    | not null
cover_url       | string    | not null
location        | integer   | not null, indexed

## Reviews
column name     | data type | details
----------------|-----------|-----------------------
id              | integer   | not null, primary key
author_id       | integer   | not null, indexed, unique w/ combo of company_id
company_id      | integer   | not null, indexed
rating          | integer   | not null, between 1-5
current_employee| boolean   | not null, default: false
job_type        | string    | not null
title           | string    | not null, length < 100 chars
pros            | string    | not null, length between 200 - 1000 chars
cons            | string    | not null, length between 200 - 1000 chars
advice          | string    | not null, length < 300 chars

## Review-Salary Join Table
column name     | data type | details
----------------|-----------|-----------------------
id              | integer   | not null, primary key
review_id       | integer   | not null, unique w/ combo of salary_id, indexed
salary_id       | integer   | not null, indexed

## Salaries
column name     | data type | details
----------------|-----------|-----------------------
id              | integer   | not null, primary key
title           | string    | not null, indexed, length < 50 chars
area            | integer   | not null
amount          | integer   | not null

## Postings
column name     | data type | details
----------------|-----------|-----------------------
id              | integer   | not null, primary key
company_id      | integer   | not null, indexed
created_on      | date      | not null, auto added by timestamps
updated_on      | date      | not null, auto added by timestamps
posting_url     | string    |
title           | string    | not null
job_type        | string    | not null
description     | string    | not null, length > 500 chars

## User-Postings Join Table
> For saved postings.

column name     | data type | details
----------------|-----------|-----------------------
id              | integer   | not null, primary key
user_id         | integer   | not null, indexed, unique w/ posting_id
posting_id      | integer   | not null, indexed, unique w/ user_id

## Posting Applications Join Table
> For postings to see applications.

column name     | data type | details
----------------|-----------|-----------------------
id              | integer   | not null, primary key
user_id         | integer   | not null, indexed, unique w/ posting_id
posting_id      | integer   | not null, indexed, unique w/ user_id
