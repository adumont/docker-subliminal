IMAGE_NAME=adumont/subliminal

all:
	docker build -t $(IMAGE_NAME) --no-cache=true .

clean:
	docker rmi $(IMAGE_NAME) || true
