# Startup Template

A basic Rails app template that avoids the first few hours of having to get set up on a new project.

## What's included?

* Rails 4.2 running on Ruby 2.2.0
* Sprockets with ES6 support
* Haml
* Sass
* Guard
* Foreman
* Sidekiq
* Puma
* Bower
* Set up for Heroku, including app.json with config for buildpack-multi and addons

## Usage

1. Check out the repo
2. Rebase to remove any unnecessary or unwanted commits
3. Find and replace instances of 'startup-template' and 'StartupTemplate'
3. Update gems: `bundle update`
4. Create a new GitHub repo and push to it
5. Bootstrap a new Heroku app: `./bin/rake heroku:bootstrap NAME=app-name`
6. ...
7. Profit!
