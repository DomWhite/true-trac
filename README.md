### Overview

TrueTrac is a something fun I've been working on that ties in two things I enjoy (web developing and the outdoors).
The idea is to bring a social aspect to camping/hiking/4wd etc. Where users can chat with each other but also share location, where they have 
It is built using Ruby on Rails, Oauth2 (via OmniAuth gem), PostgreSQL, JavaScript/jQuery, Google Maps API V3, HTML5/CSS3 (Materialize.css) and Adobe Photoshop.

Deployed to Heroku at: https://truetrac.herokuapp.com/
(Work in progress)
___________________________________________________________________________________

### Personal Goals

* Gain a better understanding of Ruby on Rails (ROR)
* Play around with API's (web and custom)
* Use a new technology
* Build something that I would like to use
* Have fun!

___________________________________________________________________________________

### Timeline

Day 1
Application set up (ROR), wire frames and research of technology requirements.
Work out MVP
Suss out OmniAuth.

Day 2
Design and creation of models and model relationships based on MVP. Seed database.
Set up of controllers and views.
Added basic chat room.

Day 3
Construction of custom api routes to utilise AJAX calls for the drop pins and location pinging.
Concentrated on JS for front-end functionality (mainly for the Map page) and played around with new features.

Day 4
Stopped all feature implementation to concentrate on design and layout using Photoshop and CSS.

Day 5
Polish and present to class

Future
Clean up code (damn you turbolinks!)
Add user account page
Add CRUD for drop pins specific to each user
Have drop pin icon change depending on category of activity

Far Future
Segmented chat rooms based on topic (hiking, camping, etc)
Port to mobile

___________________________________________________________________________________

### Outcome

While far from finished the basic MVP is there. Users sign in with twitter or facebook and can chat with each other. Also, users can view activity locations from other users as well as themselves on google maps. Location markers can be clicked to show information about the location. The last pinged location of each unique user in the database (that isn't the current user) can also be displayed on the map.