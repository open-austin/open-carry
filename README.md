# Open Carry API

The goal of this project is to create an API that serves data about business and their stated open carry policy.

The idea for this project came from our [project-ideas](https://github.com/open-austin/project-ideas/issues/43) repo.

- Please see the github [wiki](https://github.com/open-austin/open-carry/wiki) for this site for anticipated changes and notes

##Libraries, software and other tools used
- Ruby (2.2.2)
- Rails (4.2.4)
- Minitest
- SQLite3 Database
- Rails-api
- Geocoder for distance measurement

More information in the Gemfile

##Installation Steps
- Fork this Repo
- Clone this Repo
- Run `bundle install`
- Run `rake db:create`
- `rails s` to start server

##More information


##Credits and Acknowledgements
The database for this project is seeded with data gathered from several dynamic sources online. They are:
[momsdemandaction](http://momsdemandaction.org/campaigns/texas-businesses-say-no-to-open-carry/)
[austin360 dining blog](http://dining.blog.austin360.com/2016/01/04/list-of-austin-restaurants-opting-out-of-open-carry/)
[gunfreebusiness](https://gunfreebusinesses.wordpress.com/)

Crowdsourcing will expand the record set.
