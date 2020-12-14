"""test_examples.py - tests for examples.py
"""
import pytest
from examples import power2, fibo


def test_power2():
    assert power2(0) == 1
    assert power2(1) == 2
    assert power2(2) == 4

@pytest.mark.parametrize('n, expected',[
(1,1),
(2,1),
(3,2),
(0, RuntimeError),
(-1, RuntimeError),
])

def test_fibo(n, expected):
        if isinstance (expected, type) and issubclass (expected, Exception):
            with pytest.raises(expected):
                fibo(n)
        else:
            ssert fibo(n) == expected