setup:
	python3 -m venv venv
	. venv/bin/activate
	
install:
	. venv/bin/activate
	pip install --upgrade pip && pip install -r requirements.txt
	
lint:
	pylint --disable=R,C,W1203 hello.py

build_image:
	docker build --tag docker-python . &&\
	docker images

test:
	python -m pytest