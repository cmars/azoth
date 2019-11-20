
PIP=.venv/bin/pip

.PHONY: init
init: venv
	$(PIP) install -r requirements.txt

.PHONY: sysdeps
sysdeps: 
	sudo apt-get install -y flake8 python3-pip python3-virtualenv

.PHONY: venv
venv: .venv/pyvenv.cfg

.venv/pyvenv.cfg:
	python3 -m venv .venv
	$(PIP) install wheel

.PHONY: test
test:
	nosetests tests

.PHONY: clean
clean:
	$(RM) -r .venv
