# CRWLR - Food and/or Bar "Crawl" Planning Application

This is a simple web app that allows a user to plan a food and/or bar "crawl". CRWLR utilizes data from Yelp's [open dataset](https://www.yelp.com/dataset), allowing a user to plan a crawl in Las Vegas.

# General Info and Demo

CRWLR is a web app that allows a user to plan a food and/or bar "crawl". A "crawl" is an ordered list of restaurants and/or bars, designed to be visited by a group over the course of a period of time, usually less than a day. The crawl is ordered in such a way that it logistically allows the group to get to the next site from the last conveniently, usually by foot. We decided to use data from Las Vegas so we could use the famous [Las Vegas Strip](https://en.wikipedia.org/wiki/Las_Vegas_Strip) as a starting point for all crawls.

* [Video demo (YouTube)](https://www.youtube.com/watch?v=Jp5TPr-D_m0)

# Technologies and Libraries Used
* Bootstrap 4 - front end styling
* Ruby on Rails - MVC framework
* Geocoder Gem - Used to find distances between businesses, allowing the user to sort by distance, creating a sensible path from first stop to last
