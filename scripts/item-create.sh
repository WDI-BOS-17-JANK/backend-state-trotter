#!/bin/bash

API="http://localhost:4741"
URL_PATH="/items"
TOKEN="OMTa0XwyDDeAJqBbeaWUAlxpfbXkiNZ7c0VmU9HdJ4U=--7YEaASNUmXK8KBLYm/MHU10PRKjjHEdcxvmBN7YsraY="
TITLE="go to Dland"
STATE="California"
STATUS="Incomplete"
DESCRIPTION="Happiest place on Earth"
DUEDATE="August"

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
      "due_date": "'"${DUEDATE}"'"
    }
  }'

echo
