build-ci-env:
	docker-compose -f docker-compose.ci.yml build
start-ci-env:
	docker-compose -f docker-compose.ci.yml up -d
wait-ci-env:
	sh bin/wait-hub.sh
start-ci-test:
	docker-compose -f docker-compose.ci.yml exec -T selenium-host sh bin/run.sh
stop-ci-env:
	docker-compose -f docker-compose.ci.yml down	