install:
	pip install --upgrade pip && pip install -r requirements.txt
	
lint:
	pylint --disable=R,C,W1203 hello.py

test:
	python -m pytest -vv --cov=myrepolib tests/*.py