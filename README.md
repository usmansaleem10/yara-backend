# README

* Ruby version
ruby-3.0.0

* Staging Configuration
Set the following environemnt variables for Staging
- RAILS_ENV=staging
- DB_NAME
  as per system(yara) requirement
- DB_USER_NAME
  as per system(yara) requirement
- DB_PASSWORD
  as per system(yara) requirement

* Prod Configuration
Set the following environemnt variables for Production
- RAILS_ENV=production
- DB_NAME
  as per system(yara) requirement
- DB_USER_NAME
  as per system(yara) requirement
- DB_PASSWORD
  as per system(yara) requirement

* Database creation
rails db:create

rails db:migrate

* Database initialization
rails db:seed


* Services (job queues, cache servers, search engines, etc.)
no external service is required

* Deployment instructions
Use ruby version ruby 3

run commands in following order

- cd [go to repo]
- rails db:create
- rails db:migrate
- rails db:seed
- rails s 
