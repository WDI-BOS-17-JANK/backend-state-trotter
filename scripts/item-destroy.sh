#!/bin/bash

API="http://localhost:4741"
URL_PATH="/items"
TOKEN="OMEFpJ7Iz2/+IHhZ4HLGN5m4vGo+GYNu7QZ261qE9JQ=--05lUQbXElPiPYOYzYVaD1dJpcBDQWNGImaPQdO4jnRA="
ID="59258cf42173ea2550060465"

curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request DELETE \
  --header "Authorization: Token token=${TOKEN}"

echo
