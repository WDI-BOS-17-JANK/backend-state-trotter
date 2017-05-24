#!/bin/bash

API="http://localhost:4741"
URL_PATH="/items"
TOKEN="OMEFpJ7Iz2/+IHhZ4HLGN5m4vGo+GYNu7QZ261qE9JQ=--05lUQbXElPiPYOYzYVaD1dJpcBDQWNGImaPQdO4jnRA="
ID="59258cf42173ea2550060465"
TITLE="change"
STATE="NY"
STATUS="Complete"
DESCRIPTION="stuff"
DUEDATE="2017-05-20"

curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "item": {
      "title": "'"${TITLE}"'",
      "state": "'"${STATE}"'",
      "status": "'"${STATUS}"'",
      "description": "'"${DESCRIPTION}"'",
      "due_date": "'"${DUEDATE}"'"
    }
  }'

echo
