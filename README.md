# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

# Ruby version
ruby 3.4.2 (2025-02-15 revision d2930f8e7a) +PRISM [arm64-darwin24]

# System dependencies
- SQLite3

# Configuration

# Database creation

# Data model

## Users
- id:integer [primary key, unique, present, auto-generated]
- username:string [unique, 4-20 characters, only A-z, numbers, underscores allowed, present]
- password_digest:string [present, hashed with bcrypt via has_secure_password]
- email:string [unique, present, valid email syntax]
- name:string
- hometown:string
- karma:integer [default 0]
- created_at:timestamp [auto-generated]
- updated_at:timestamp [auto-generated]

- has_many posts
- has_many comments

## Posts
- id:integer [primary key, unique, present, auto-generated]
- user_id:integer [foreign key to users, present, indexed]
- link:text [valid URL format if present]
- body:text
- upvote:integer [default 0]
- downvote:integer [default 0]
- created_at:timestamp [auto-generated]
- updated_at:timestamp [auto-generated]

Validation: At least one of link OR body must be present

- belongs_to user
- has_many comments

## Comments
- id:integer [primary key, unique, present, auto-generated]
- user_id:integer [foreign key to users, present, indexed]
- post_id:integer [foreign key to posts, present, indexed]
- body:text [present]
- upvote:integer [default 0]
- downvote:integer [default 0]
- created_at:timestamp [auto-generated]
- updated_at:timestamp [auto-generated]

- belongs_to post
- belongs_to user

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
