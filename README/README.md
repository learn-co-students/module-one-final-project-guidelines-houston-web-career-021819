# ZOLI Motivation Postcard Service

Welome to ZOLI POST! If you would like to send motivation postcards to your loved ones, you are in the right place.
In this CLI application, you will be able to see your current postcards, send a new postcard, revise your postcard and cancel your postcard.

## Getting Started
Fork this application and clone it to your local machine.
Bedore you run the application, make sure you run bundle install first in your terminal to install all the gems required in the Gemfile
Then you can start running the program!

## Models and Associations
In this CLI application, We have built a postcard domain model to deliver this service. We have a sender, receiver and postcard model. They are associated in the following way:

* A sender has many postcards and has many receivers through postcards
* A postcard belongs a sender and a receiver
* A receiver has many postcards and has many senders through postcards


## Running the application
We've set up the migrations in the `db/migrate` directory to create the senders, postcards and receivers table.
In`db/migrate` directory, we've also set up some data in the seeds file for you to play around with.

Run 'ruby ./bin/run.rb' in your terminal, you will start with a greeting message and a login prompt


