appname = railsboiler
dexec = docker-compose exec
drun = docker-compose run

up:
	docker-compose up
down:
	docker-compose down
init_project:
	$(drun) app bundle exec rake init_project
build:
	docker-compose build
bundle:
	$(drun) app bundle
dbcreate:
	$(drun) app bundle exec rails db:create
dbmigrate:
	$(drun) app bundle exec rails db:migrate
seed:
	$(drun) app bundle exec rails db:seed
setup:
	$(drun) app bundle exec rails db:setup
reset:
	$(drun) app bundle exec rails db:reset
restart:
	docker-compose run app rm /$(appname)/tmp/pids/server.pid
	make up
run_test:
	$(drun) app rspec
