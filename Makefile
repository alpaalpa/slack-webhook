FILES=slack_webhook/slack.py slack_webhook/__init__.py setup.py
DOCS=LICENSE README.md

lint: ${FILES} ${DOCS}
	python -m flake8 slack_webhook

dist: ${FILES} ${DOCS}
	python setup.py sdist bdist_wheel

upload: dist
	python -m twine upload dist/*