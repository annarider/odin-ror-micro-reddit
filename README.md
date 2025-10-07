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
- username 
- password
- image
- karma
- has_many posts
- has_many comments

Posts
- link
- body
- upvote
- downvote
- belongs_to user
- has_many comments

Comments
- body
- upvote
- downvote
belongs_to post
belongs_to user

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
