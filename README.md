# prismic.io webhook tester

This is just a very simple Rails app dedicated to testing the reception of webhooks from prismic.io.

It only has 3 features:

 * A model called `Call`, with all of its scaffolding.
 * A `/webhook` route receiving POST requests, and writing the 4 JSON fields typically sent by prismic.io's webhook into a new record of the `Call` model.
 * And the homepage simply displays a `curl` query you can use to test it without using prismic.io webhooks.
 
 It is ready to be pushed on Heroku as is, if need be.