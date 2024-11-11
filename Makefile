PIP := C:\Users\Zenbook\AppData\Local\Programs\Python\Python312\Scripts\pip.exe
PYTHON3 := C:\\Users\\Zenbook\\AppData\\Local\\Programs\\Python\\Python312\\python.exe
TESTS := ./venv/Scripts/pytest -v ./test_controllers.py

clear:
	rmdir venv /s

venv:
	$(PYTHON3) -m venv venv

install_requirements:
	$(PIP) install -r requirements.txt

run:
	python server.py

test:
	$(TESTS)