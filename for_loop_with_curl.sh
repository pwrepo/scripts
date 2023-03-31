for file in /Volumes/Backup/Media/*; do
  if [[ -f "$file" ]]; then
curl -k -L -X POST 'https://api.estuary.tech/content/add' -H 'Accept: application/json' -H 'Authorization: Bearer <token here>' -F data=@"$file" | jq >> /Users/pwagner/Downloads/output
  fi
done
