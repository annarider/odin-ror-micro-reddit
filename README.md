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
- username:string [unique, 4-20 characters, only A-z, numbers, underscores allowed, present, primary key]
- password [string, 6-30 characters, present]
- email:string [unique, present, valid email syntax]
- name:string
- hometown:string
- image:blob
- karma:integer
- created_at:timestamp
- updated_at:timestamp

- has_many posts
- has_many comments

## Posts
- id:integer [primary key, unique, present]
- link:text [valid URL]
- body:text [present]
- upvote:integer
- downvote:integer
- created_at:timestamp
- updated_at:timestamp

- belongs_to user
- has_many comments

## Comments
- body:text [present]
- upvote:integer
- downvote:integer
- created_at:timestamp
- updated_at:timestamp

- belongs_to post
- belongs_to user

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
