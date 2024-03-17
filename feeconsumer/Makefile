# TODO: fix date logic; avoid regen
#TAG = `date "+%Y%m%d-%H%M"`-`git rev-parse --short HEAD`
TAG = `git rev-parse --short HEAD`

build:
	docker build -t feeconsumer:$(TAG) .
	docker tag feeconsumer:$(TAG) prashantjain25/feeconsumer:latest
	docker tag feeconsumer:$(TAG) prashantjain25/feeconsumer:$(TAG)
	echo "Built feeconsumer:$(TAG)"

deploy: build
	docker push prashantjain25/feeconsumer:$(TAG)
	echo "Pushed prashantjain25/feeconsumer:$(TAG)"

test:
	echo $(C)