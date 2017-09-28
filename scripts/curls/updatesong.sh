curl --include --request PATCH "https://songs-and-authors.herokuapp.com/songs/3" \
  --header "Content-type: application/json" \
  --data '{
    "song": {
      "title": "Girl from Ipanema",
      "year": "1967",
      "authors": "Tom Jobim"
    }
  }'

echo
