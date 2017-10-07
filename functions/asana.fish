function asana
  curl -H "Authorization: Bearer $asana_api_key" \
  https://app.asana.com/api/1.0/tasks \
  --data-urlencode "assignee=78581146443362" \
  --data-urlencode "name=$argv" \
  --data-urlencode "workspace=47191182467313" \
  | ccat
end
