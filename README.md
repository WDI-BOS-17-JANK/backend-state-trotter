# State Trotter
## A States Bucket-list App built by JANK (Joe Belmonte, Arlo Feirman, Nikki Riser, and Kelly English-James)
- [State Trotter Express.js Backend API Repo](https://github.com/WDI-BOS-17-JANK/backend-state-trotter)
- [State Trotter Frontend Repo](https://github.com/WDI-BOS-17-JANK/frontend-state-trotter)
- [State Trotter Deployed API](https://mysterious-plains-14810.herokuapp.com/)
- [State Trotter Deployed SPA](https://wdi-bos-17-jank.github.io/frontend-state-trotter/)

## About State Trotter
State Trotter is a bucket list app divded by state (see Frontend Repo for additional details).

## Dependencies

Express middleware and Node modules installed with `npm install`.

-   [`express`](http://expressjs.com/)
-   [`mongoose`](http://mongoosejs.com/)

Each team member will need to create their own SECRET_KEY in their local repositories, for development testing. Do not push .env file to Git Hub, as per best practices. You will use this terminal command in the root of the project directory to generate a .env file with a SECRET_KEY. The only neccessary step to follow is to set a SECRET_KEY.
```sh
echo SECRET_KEY=$(/usr/local/opt/openssl/bin/openssl rand -base64 66 | tr -d '\n') >>.env
```
Followed set-up from [`Express-API-Template`](https://github.com/ga-wdi-boston/express-api-template) for basic template setup per requirements in setup guide. Be sure to run the API server with 'npm start'.

## API Routes
#### Users
| Verb   | URI Pattern          | Controller#Action |
|--------|----------------------|-------------------|
| POST   | /sign-up             | users#signup      |
| POST   | /sign-in             | users#signin      |
| DELETE | /sign-out/:id        | users#signout     |
| PATCH  | /change-password/:id | users#changepw    |
- post ‘/sign-up’ => ‘users#signup’
- post ‘/sign-in’ => ‘users#signin’
- delete ‘/sign-out/:id’ => ‘users#signout’
- patch ‘/change-password/:id’ => ‘users#changepw’
#### Items (Goals)
| Verb   | URI Pattern      | Controller#Action      |
|--------|------------------|------------------------|
| GET    | /items      | items#index       |
| GET    | /items/:id  | items#show        |
| POST   | /items      | items#create      |
| PATCH  | /items/:id  | items#update      |
| DELETE | /items/:id  | items#destroy     |
- get ‘/items/’ => ‘items#index’
- get ‘/items/:id’ => 'items#show'
- post ‘/items/’ => ‘items#create’
- patch ‘/items/:id’ => ‘items#update’
- delete ‘/items/:id’ => ‘items#destroy’
