a=$1
curl 'http://express.heartrails.com/api/json?method=getLines&prefecture='$a 2> /dev/null | jq '.response | .line[]'
