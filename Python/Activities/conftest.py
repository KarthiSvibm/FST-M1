import pytest


    
@pytest.fixture
def k():
    ip = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    return ip




def testsum(k):
    result = 0
    for i in k:
        result += i

    assert (result == 55)