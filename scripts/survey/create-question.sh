API="http://localhost:4741"
URL_PATH="/questions"

ID="59244430f8e3440b5b6f8fcd"
TOKEN="cj9jt8u7+UGRFfJGYFCj1yNuahz+hDR8gNzo8IebFIM=--hd/zk96AlHn/dUBYL1Sj921qJuB1sIaTpUFXPeIaP/c="
TEXT="TEST"

curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "question": {
      "prompt": "'"${TEXT}"'",
      "_survey": "'"${ID}"'"
    }
  }'

echo
