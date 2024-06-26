import pytest

@pytest.mark.greater
@pytest.mark.xfail
def test_greater():
    x = 2
    y = 5
    assert x > y

@pytest.mark.greater
@pytest.mark.xfail
def test_greater_equal():
    x = 6
    y = 6
    assert x > y
    
@pytest.mark.others
def test_lesser():
    x = 2
    y = 5
    assert x < y