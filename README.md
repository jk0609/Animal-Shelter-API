# Pet Shelter API (Week 4 Rails Project)

#### By Jonathon Kang

## Description

A basic API set up to return data about pets. Supports basic CRUD endpoints (index, show, create, update and delete) along with a Random endpoint and a Search endpoint. Uses Rack-Attack for basic rate throttling.

## Endpoints
* GET '/pets' - Returns a list of all pets in the database in JSON format. Root path will redirect here.
* GET '/pets/:pet_id' - Accepts an integer id and will return data on the corresponding pet, or an error message if no pet exists with that ID.
* POST '/pets?PARAMS' - Creates a new Pet object in database based on passed parameters. All parameters are required.
  1. Name
  2. Species (Cat or Dog)
  3. Breed
  4. Age in integer format
* PUT 'pets/:pet_id?PARAMS' - Updates information on the identified pet based on passed parameters. Not all params are required.
* DELETE 'pets/:pet_id' - Removes the identified pet from the database.
* GET '/random' - Will return a single random pet's data.
* GET '/search?name=QUERY' - Will search the database for an object with a name attribute equal to the given query and return it if found. Returns detailed error messages if not found.

## Prerequisites
* Rails
* PostgreSQL

## Setup/Installation Requirements
1. Clone the directory to your local machine and navigate to project root directory.
2. Run $ bundle to install necessary gems.
3. Run $ rake db:create and $ rake db:migrate to initialize the database. Run $ rails db:migrate RAILS_ENV=test to enable rspec tests.
4. Run $ rake db:seed to populate the database with faker data.
5. Run $ rails server to start the app. Root for api requests is 'localhost:3000'

## Technologies Used
* HTML/CSS
* Ruby
* Rails
* PostgreSQL

## Known Issues
* None at this time.



### License
MIT
