appname = railsboiler
dexec = docker-compose exec

# build the image and up the containers
up:
	docker-compose up

#
down:
	docker-compose down

# Initialize the project
init_project:
	$(dexec) app bundle exec rake init_project

# Rebuild the images
build:
	docker-compose build

# Run bundler
bundle:
	$(dexec) app bundle
dbcreate:
	$(dexec) app bundle exec rails db:create
dbmigrate:
	$(dexec) app bundle exec rails db:migrate
seed:
	$(dexec) app bundle exec rails db:seed
setup:
	$(dexec) app bundle exec rails db:setup
reset:
	$(dexec) app bundle exec rails db:reset
restart:
	docker-compose run app rm /$(appname)/tmp/pids/server.pid
	make up
run_test:
	$(dexec) app rspec
