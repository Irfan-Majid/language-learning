"""
Security QA example tests - pytest
Run: pip install pytest
     pytest security_qa_tests.py -v
"""
import re

def validate_email(email):
    if not email or len(email) > 254:
        return False
    return bool(re.match(r"^[^@]+@[^@]+\.[^@]+$", email))

def sanitize_output(user_input):
    """Prevent XSS - escape HTML characters"""
    return (
        user_input.replace("&", "&amp;")
        .replace("<", "&lt;")
        .replace(">", "&gt;")
        .replace('"', "&quot;")
    )

def check_password_strength(password):
    if len(password) < 8:
        return False
    has_upper = any(c.isupper() for c in password)
    has_lower = any(c.islower() for c in password)
    has_digit = any(c.isdigit() for c in password)
    return has_upper and has_lower and has_digit

# --- Tests ---

def test_valid_email():
    assert validate_email("user@example.com") is True

def test_invalid_email_sql_injection():
    assert validate_email("'; DROP TABLE users;--@x.com") is False

def test_xss_sanitization():
    assert sanitize_output("<script>alert(1)</script>") == "&lt;script&gt;alert(1)&lt;/script&gt;"

def test_weak_password_rejected():
    assert check_password_strength("short") is False

def test_strong_password_accepted():
    assert check_password_strength("SecurePass1") is True

def test_empty_email():
    assert validate_email("") is False
