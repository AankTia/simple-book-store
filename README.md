# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation
Run docker compse
In dontainer terminal run:
mongosh --host localhost --port 27017 -u "root.admin" -p "root.admin.password" --authenticationDatabase admin
use simple-book-store
db.createUser({user: "book-store-admin", pwd: "book-store-pwd", roles: ["readWrite"]})

use simple_book_store_test
db.createUser({user: "book-store-admin", pwd: "book-store-pwd", roles: ["readWrite"]})

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
