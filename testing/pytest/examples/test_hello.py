"""pytest examples - run: pytest test_hello.py -v"""

def add(a, b):
    return a + b

def greet(name):
    return f"Hello, {name}!"

def test_add():
    assert add(2, 3) == 5

def test_greet():
    assert greet("pytest") == "Hello, pytest!"

def test_negative():
    assert add(-1, 1) == 0
