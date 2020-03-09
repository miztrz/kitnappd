# Bianca's Development Log

This file  will just highlight my steps as I take them.

* Created database & added creds to local env
* Added github & heroku links - Heroku to auto deploy from my pushes to github.
* Installed active storage, but did not set up credentials (just setup db)
* Created "Kitten" model/controller using scaffold
> rails g scaffold Kitten name:string breed:string description:text hourly_rate:money daily_rate:money active:boolean
* Tested - can add items to app.
* Static home / about page created, route to root home added.
* Updated the gemfile with the additional libraries I want. Notes as to why in the Gemfile. 
* Added AWS credentials & tested active storage (adding images to kitten Model). 
* Had an issue with multiple images not uploading - 
    Resolved by following directions found here: 
    https://stackoverflow.com/questions/58282845/rails-6-active-storage-could-not-find-or-build-blob-expected-attachable-got
* Updated active flag on Kitten model to default to true.
* Bootstrap / jquery working. Loaded a default dark theme from Bootswatch, with the matching light available too if I can work out the javascript behind it.
* Mostly worked on formatting the views, created a "kittens" card which is really effective, as well as a dashboard view which is yet to be completed.
* Added Bookings model, and configured to make bookings from kitten listings. Also configured so bookings are only visible to the user who submitted them and the user that owns the related kitten.
* Removed hourly_rate from Kitten model

