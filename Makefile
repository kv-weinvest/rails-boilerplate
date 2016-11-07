appname = railsboiler
dexec = docker-compose exec

up:
	docker-compose up
down:
	docker-compose down
build:
	docker-compose build
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