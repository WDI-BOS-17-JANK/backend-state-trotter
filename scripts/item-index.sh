#!/bin/bash

API="http://localhost:4741"
URL_PATH="/items"
TOKEN="84s4FxhGzcKUhEnMoCfa9cqH6jWWWWESAs/FXfT3F1U=--HRcd4OrmeRNa1OX76xIIBTZkm/c2EraT4mDrVyVBYKE="


curl "${API}${URL_PATH}" \
  --include \
  --request GET \
  --header "Authorization: Token token=${TOKEN}"

echo
