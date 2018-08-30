curl "http://localhost:4741/favorites" \
  --include \
  --request POST \
  # --header "Content-Type: application/json" \
  # --header "Authorization: Token token=${TOKEN}" \
  # --data '{
  #   "favorite": {
  #     "common_name": "'"${COMMON_NAME}"'"
  #     "latin_name": "'"${LATIN_NAME}"'"
  #     "description": "'"${DESCRIPTION}"'"
  #     "iucn_status": "'"${IUCN_STATUS}"'"
  #     "habitat: "'"${HABITAT}"'"
  #     "image": "'"${IMAGE}"'"
  #   }
  # }'
  --data `{
    "image": e[e.selectedIndex].value
  }`

echo
