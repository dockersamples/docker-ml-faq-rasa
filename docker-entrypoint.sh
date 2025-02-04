#!/bin/sh

# Replace placeholders in JavaScript files with environment variables
for file in /usr/share/nginx/html/*.html; do
  sed -i "s|__RASA_API_URL__|${RASA_API_URL}|g" "$file"
done

exec "$@"
