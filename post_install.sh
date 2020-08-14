#!/bin/bash
docker exec -it redmine bundle install
docker exec -it redmine bundle exec rake generate_secret_token
docker exec -it redmine bundle exec rake db:migrate
docker exec -it redmine bundle exec rake redmine:load_default_data
