#!/bin/bash

API="http://localhost:4741"
URL_PATH="/items"
ID="5921cdcc760d35437f938925"
TOKEN="S4hB0KmH9VQeEQi3mlDFMFQ2wMQLfR9+aYw4PEQ6vOA=--VAKa/cuQ1LSFRBaOeZz/YPZa9ZdCzOuenn8H5DCO78o="


curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request DELETE \
  --header "Authorization: Token token=${TOKEN}"

echo
