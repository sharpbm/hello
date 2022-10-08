install:
	pip install --upgrade pip && pip install -r requirements.txt
	
lint:
	pylint --disable=R,C,W1203 flask_app/web.py

test:
	ls && python -m pytest -vv --cov=myrepolib tests/*.py