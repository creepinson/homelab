docker-compose $(find services/*.docker-compose.yml | sed -e 's/^/-f /') config > docker-compose.yml
