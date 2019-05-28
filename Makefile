release:
	rm -r dist
	. venv/bin/activate; python setup.py sdist bdist_wheel && twine upload dist/*
	rm -r dist

lint:
	flake8 sanic_session/ tests

test:
	py.test -vs --cov sanic_session/ tests