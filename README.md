# Event app

Basic feature list:

 * User is able to see the events list
 * User is able to download the ICS file
 * User is able to subscribe to the events
 * Admin is able to make CRUD operations on events
 * Admin is able to change the delivery subscriptions period


# Requirements
* Ruby 2.4.1
* Rails 5.1.4
* PostgreSQL
* Redis

# Usage

* Gems install
```
bundle update
```
* Create database
```
rails db:migrate
```
* Launch Rails server
```
rails s
```
* Launch redis server
```
redis-server
```
* Launch sidekiq
```
sidekiq
```
* Have fun!


### To Do:

 * Cover the app with 100% of tests (now it's about 20%)
 * Add `seeds`
 * Deploy to Heroky (also configure the production configs)
 * Add the attachment feature for the events for the non-admin users
 * Add bootstrap and use it for the app styling
 * Be a cool RoR developer
