curl "http://localhost:4741/creatures" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "creature": {
      "common_name": "'"${COMMON_NAME}"'"
      "latin_name": "'"${LATIN_NAME}"'"
      "description": "'"${DESCRIPTION}"'"
      "iucn_status": "'"${IUCN_STATUS}"'"
      "habitat: "'"${HABITAT}"'"
      "image": "'"${IMAGE}"'"
    }
  }'

echo
