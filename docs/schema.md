# Schema Information

## users
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


## Salaries
column name     | data type | details
----------------|-----------|-----------------------
id              | integer   | not null, primary key
author_id       | integer   | not null, unique w/ combo of title
company_id      | integer   | not null, indexed
title           | string    | not null, indexed, length < 50 chars
area            | integer   | not null
amount          | integer   | not null

## Postings
column name     | data type | details
----------------|-----------|-----------------------
id              | integer   | not null, primary key
author_id       | integer   | not null
company_id      | integer   | not null, indexed
created_on      | date      | not null, auto added by timestamps
updated_on      | date      | not null, auto added by timestamps
posting_url     | string    |
title           | string    | not null
job_type        | string    | not null
description     | string    | not null, length > 500 chars
