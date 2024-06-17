import pytest

@pytest.fixture
def wallet():
    amount = 0
    return amount


@pytest.mark.parametrize("earn, spent, expected", [ (30, 10, 20), (20, 2, 18), ])


def test_transact(wallet, earn, spent, expected):
        wallet += earn
        print("Earned: ",earn)
        print("Wallet afte Earned: ",wallet)
        wallet -= spent
        print("spent: ",spent)
        print("Wallet afte Spent: ",wallet)
        print("Expected: ",expected)
        assert wallet == expected