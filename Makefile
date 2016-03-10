THEME := hyde
NAME := lukas-static-site

build: public/index.html
	hugo -t $(THEME)
	docker build -t $(NAME) .

run:
	docker run --name nginx --restart=always -p 80:80 $(NAME)
