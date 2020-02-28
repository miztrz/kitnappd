# Bianca's Development Log

This file  will just highlight my steps as I take them.

* **Created** database & added creds to local env
* Added **github** & **heroku** links - Heroku to auto deploy from my pushes to github.
* Installed active storage, but did not set up credentials (just setup db)
* Created "Kitten" model/controller using scaffold
> rails g scaffold Kitten name:string breed:string description:text hourly_rate:money daily_rate:money active:boolean
* Tested - can add items to app.
* Static home / about page created, route to root home added.
* Updated the gemfile with the additional libraries I want. Notes as to why in the Gemfile. 
* Added AWS credentials & tested active storage (adding images to kitten Model). 
* FIXME Images Not working.

* TODO Install Rspec & configure for minimal tests
* TODO Install Bootstrap / Jquery / Simpleform properly