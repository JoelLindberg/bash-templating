# Dummy example of how it could be used.
# Environment variables should of course be set outside of the actual script.
export SERVERNAME="testserver01"
export RAM="4gib"

json_payload=$(envsubst < config.json)

curl https://localhost:8000/api/v1/new-vm \
-H 'Content-Type: application/json' \
-d echo "'${json_payload}'"