# Beginner Guide - Selenium

**Time:** 2 weeks | **Prerequisites:** Python or Java

## Step 1: Install (Python)
```bash
pip install selenium pytest
# Install Chrome browser + chromedriver in PATH
```

## Step 2: First test
See [examples/test_hello.py](../examples/test_hello.py)

```bash
pytest examples/test_hello.py -v
```

## Step 3: Core pattern
```python
from selenium import webdriver
driver = webdriver.Chrome()
driver.get("https://example.com")
assert "Example" in driver.title
driver.quit()
```

## Practice
1. Fill and submit a form
2. Wait for element: `WebDriverWait`
3. Page Object Model pattern

-> [02-fundamentals/](../02-fundamentals/)
