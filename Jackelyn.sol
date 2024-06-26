// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract JackyCafeShop {
    address public owner;
    uint256 public quantity;

    event quantityUpdated(uint256 newquantity);

    constructor() {
        owner = msg.sender;
        quantity = 0;
    }

    function updatequantity(uint256 newquantity) public {
        require(msg.sender == owner, "Only the owner can update the quantity");

        assert(newquantity != quantity);

        quantity = newquantity;

        emit quantityUpdated(newquantity);
    }

    function assertJackyCafeShop(uint256 x, uint256 y) public pure returns (uint256) {
        assert(x != y);

        return x + y;
    }

    function revertJackyCafeShop(uint256 x) public pure returns (uint256) {

        if (x < 10) {
            revert("Value must be greater than or equal to 10");
        }

        return x;
    }
}