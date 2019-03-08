## Overview

Welome to ZOLI POST! If you would like to send motivation postcards to your loved ones, you are in the right place.

We have built a postcard domain model to deliver this service. We have a sender, receiver and postcard model. They are associated in the following way:

* A sender has many postcards and has many receivers through postcards
* A postcard belongs a sender and a receiver
* A receiver has many postcards and has many senders through postcards
