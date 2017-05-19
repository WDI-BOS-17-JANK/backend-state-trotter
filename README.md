# State Trotter
A bucket list app divded by state.

Each team member will need to create their own SECRET_KEY in their local
repositories, for development testing.
I didn't push my .env file to Git Hub, as per best practices.

You will use this terminal command in the root of the project directory to generate an
.env file with a SECRET_KEY.

echo SECRET_KEY=$(/usr/local/opt/openssl/bin/openssl rand -base64 66 | tr -d '\n') >>.env

I also reccomend following step 8 from the express-api-template setup guide
which is as follows.

Run the API server with npm start. If you want your code to be reloaded on change, you should npm install -g nodemon and use nodemon instead of npm start.

(link to setup guide)[https://github.com/ga-wdi-boston/express-api-template]

The only neccessary step to follow is to set a SECRET_KEY.
