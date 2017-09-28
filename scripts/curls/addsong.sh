curl --include --request POST "https://songs-and-authors.herokuapp.com/songs" \
  --header "Content-type: application/json" \
  --data '{
    "song": {
      "title": "Luisa",
      "year": "1969",
      "authors": "Tom Jobim e Chico Buarque"
    }
  }'

echo
