#!/bin/bash

API="http://localhost:4741"
URL_PATH="/items"
TOKEN="OMEFpJ7Iz2/+IHhZ4HLGN5m4vGo+GYNu7QZ261qE9JQ=--05lUQbXElPiPYOYzYVaD1dJpcBDQWNGImaPQdO4jnRA="
TITLE="go to Dland"
STATE="California"
STATUS="incomplete"
DESCRIPTION="Happiest place on Earth"
DUEDATE="2017-05-20"
CATEGORY="Travel"
LOCATION="Park"

curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "item": {
      "title": "'"${TITLE}"'",
      "state": "'"${STATE}"'",
      "status": "'"${STATUS}"'",
      "description": "'"${DESCRIPTION}"'",
      "due_date": "'"${DUEDATE}"'",
      "category": "'"${CATEGORY}"'",
      "location": "'"${LOCATION}"'"
    }
  }'

echo


# Successful response:

# HTTP/1.1 201 Created
# X-Powered-By: Express
# Access-Control-Allow-Origin: http://localhost:7165
# Vary: Origin
# Content-Type: application/json; charset=utf-8
# Content-Length: 356
# ETag: W/"164-bH1EwZDuUr0zyUINgBfBvlEQeCg"
# Date: Sat, 20 May 2017 20:25:17 GMT
# Connection: keep-alive
#
# {"item":{"__v":0,"updatedAt":"2017-05-20T20:25:17.317Z","createdAt":"2017-05-20T20:25:17.317Z","title":"go to Dland","state":"California","status":"Incomplete","description":"Happiest place on Earth","due_date":"2017-05-20T00:00:00.000Z","_owner":"592090071c2aee32a68bc413","_id":"5920a62d18961237f7c74048","id":"5920a62d18961237f7c74048","editable":true}}
