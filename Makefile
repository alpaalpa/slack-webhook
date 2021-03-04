FILES=slack_webhook/slack.py slack_webhook/__init__.py
DOCS=LICENSE README.md setup.py

lint: ${FILES} ${DOCS}
	python -m flake8 slack_webhook

dist: ${FILES} ${DOCS}
	python setup.py sdist bdist_wheel

upload: dist
	python -m twine upload dist/*