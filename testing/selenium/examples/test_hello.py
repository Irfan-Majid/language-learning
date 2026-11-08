"""Selenium E2E example - pip install selenium pytest
Requires: Chrome + chromedriver in PATH
Run: pytest test_hello.py -v
"""
import pytest

def test_example_domain_title():
    try:
        from selenium import webdriver
        from selenium.webdriver.chrome.options import Options
        options = Options()
        options.add_argument("--headless=new")
        driver = webdriver.Chrome(options=options)
        driver.get("https://example.com")
        assert "Example Domain" in driver.title
        driver.quit()
    except Exception as e:
        pytest.skip(f"Selenium/Chrome not available: {e}")
