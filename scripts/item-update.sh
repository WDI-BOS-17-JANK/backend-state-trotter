#!/bin/bash

API="http://localhost:4741"
URL_PATH="/items"
TOKEN="S4hB0KmH9VQeEQi3mlDFMFQ2wMQLfR9+aYw4PEQ6vOA=--VAKa/cuQ1LSFRBaOeZz/YPZa9ZdCzOuenn8H5DCO78o="
TITLE="change"
STATE="NY"
STATUS="Complete"
DESCRIPTION="stuff"
DUEDATE="2017-05-20"
ID="5921cdcc760d35437f938925"

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
