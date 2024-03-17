# TODO: fix date logic; avoid regen
#TAG = `date "+%Y%m%d-%H%M"`-`git rev-parse --short HEAD`
TAG = `git rev-parse --short HEAD`

build:
	docker build -t feeproducer:$(TAG) .
	docker tag feeproducer:$(TAG) prashantjain25/feeproducer:latest
	docker tag feeproducer:$(TAG) prashantjain25/feeproducer:$(TAG)
	echo "Built feeproducer:$(TAG)"

deploy: build
	docker push prashantjain25/feeproducer:$(TAG)
	echo "Pushed prashantjain25/feeproducer:$(TAG)"

test:
	echo $(C)