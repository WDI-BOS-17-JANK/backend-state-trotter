#!/bin/bash

API="http://localhost:4741"
URL_PATH="/sign-in"
EMAIL=test
PASSWORD=testing
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "credentials": {
      "email": "'"${EMAIL}"'",
      "password": "'"${PASSWORD}"'"
    }
  }'

echo


# {"user":{"_id":"592090071c2aee32a68bc413","updatedAt":"2017-05-20T18:51:19.882Z","createdAt":"2017-05-20T18:50:47.050Z","email":"test","token":"/u+mqnBYZIRzHRWSVRhvl3Z89SfVuu8FpkSbGH/QtPg=--aN0qOdzTdsrwcQfADzVndxGdxv+bLFLNSk+VZN5BmM8=","__v":0,"id":"592090071c2aee32a68bc413"}}


# TOKEN token=/u+mqnBYZIRzHRWSVRhvl3Z89SfVuu8FpkSbGH/QtPg=--aN0qOdzTdsrwcQfADzVndxGdxv+bLFLNSk+VZN5BmM8=
