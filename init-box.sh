

if [ "$#" -lt 1 ]
then
  echo "Usage: sh ./init-box.sh <box_id>"
else
  box_id=$1
  curl -X POST "https://jsonbox.io/${box_id}" \
    -H "content-type: application/json" \
    -d @bikes.json
fi
