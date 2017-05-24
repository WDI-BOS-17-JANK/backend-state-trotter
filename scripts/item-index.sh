#!/bin/bash

API="http://localhost:4741"
URL_PATH="/items"
TOKEN="OMEFpJ7Iz2/+IHhZ4HLGN5m4vGo+GYNu7QZ261qE9JQ=--05lUQbXElPiPYOYzYVaD1dJpcBDQWNGImaPQdO4jnRA="

curl "${API}${URL_PATH}" \
  --include \
  --request GET \
  --header "Authorization: Token token=${TOKEN}"

echo
