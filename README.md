# Book Test

A simple bookstore challenge following the requirements provided..

The project was created using version 6.0.3 of Rails with version 2.7.0 of ruby

Some gems with features used in the project:

* Rails Admin ( Dashboard )

* MongoID ( Database )

* Kanimari ( Pagination )

* Devise ( Authentication )

* Cancancan ( Authorization )

# installation
After cloning the repository:

`bundle install`

`yarn install`

`rails db:seed`

Current test coverage is 95.45%
To generate a coverage report, simply run `bundle exec rspec` and view the index.html in the /coverage directory

Current test quality is 98.13%
To generate a quality report, simply run `rubycritic` 


#Access

To access the administrative panel, start the application (if it is in the development environment, 0.0.0.0:3000)
/admin

The app will require a login, which can be done with the following credentials:

**email: admin@example.com

password: 12345**
* ...
