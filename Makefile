#
#	Helper for building the docker images
#


images: docker-base docker-install docker-run

volume:
	docker volume create csgo_gamefiles

update: volume
	docker run -v csgo_gamefiles:/csgo csgo-install

docker-base:
	@docker build --no-cache ./base -t csgo-base

docker-install:
	@docker build --no-cache ./install -t csgo-install

docker-run:
	@docker build --no-cache ./run -t csgo-run
