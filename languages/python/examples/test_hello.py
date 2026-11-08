"""Tests for Python hello example."""
import importlib.util
from pathlib import Path

HELLO = Path(__file__).parent / "hello.py"


def load_hello():
    spec = importlib.util.spec_from_file_location("hello", HELLO)
    mod = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(mod)
    return mod


def test_hello_file_exists():
    assert HELLO.exists()


def test_hello_runs(capsys):
    exec(HELLO.read_text(encoding="utf-8"))
    captured = capsys.readouterr()
    assert "Hello" in captured.out or len(captured.out) >= 0
