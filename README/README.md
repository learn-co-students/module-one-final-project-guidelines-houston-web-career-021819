## Overview

Welome to ZOLI POST! If you would like to send motivation postcards to your loved ones, you are in the right place.

In this CLI application, We have built a postcard domain model to deliver this service. We have a sender, receiver and postcard model. They are associated in the following way:

* A sender has many postcards and has many receivers through postcards
* A postcard belongs a sender and a receiver
* A receiver has many postcards and has many senders through postcards

## Database
We've set up the migrations in the `db/migrate` directory to create the senders, postcards and receivers table.

In`db/migrate` directory, we've also set up some data in the seeds file to run the application. 


## Install Instructions
Before you run the application, make sure you run bundle install first in the terminal, it will install all the required gems in the Gemfile

## Deliver