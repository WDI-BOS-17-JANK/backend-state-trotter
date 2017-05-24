#!/bin/bash

API="http://localhost:4741"
URL_PATH="/items"
TOKEN="OMEFpJ7Iz2/+IHhZ4HLGN5m4vGo+GYNu7QZ261qE9JQ=--05lUQbXElPiPYOYzYVaD1dJpcBDQWNGImaPQdO4jnRA="
ID="59258cf42173ea2550060465"

curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request GET \
  --header "Authorization: Token token=${TOKEN}" \

echo



# {id: 592537882173ea2550060463}
# {id: 592537882173ea2550060463}
# "token":"3dX6/Ou24jbz42ha+mP6JzzojJRYMf1FPZzBHZ69c24=--dL0c6BrlP2xir954XkrnVxRVHIblfbTMu7U6dmH4sm4="

# {"user":{"_id":"592537882173ea2550060463","updatedAt":"2017-05-24T07:40:14.036Z","createdAt":"2017-05-24T07:34:32.333Z","email":"test","token":"3dX6/Ou24jbz42ha+mP6JzzojJRYMf1FPZzBHZ69c24=--dL0c6BrlP2xir954XkrnVxRVHIblfbTMu7U6dmH4sm4=","__v":0,"id":"592537882173ea2550060463"}}
