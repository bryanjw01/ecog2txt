#  This is basic Makefile which includes commands to built and run docker files.
R_CONT := $(shell docker ps -q)
IMAGES := $(shell docker images -q)
CONT :=  $(shell docker ps -aq)

build:
	cd docker && docker build -t starter .

%:
	docker run -ti -v "${CURDIR}/docker_test:/opt/"  starter $@

run:
	docker run -ti -v "${CURDIR}/docker_test:/opt/"  starter

rmi_all:
	@docker rmi $(IMAGES)

rm_all:
	@docker rm $(CONT)

stop_all:
	@docker stop $(R_CONT)

prune:
	@docker volume prune  

ls:
	docker volume ls

images:
	docker images

ps:
	docker ps -a
