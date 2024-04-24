// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import {PERC20} from "./PERC20.sol";

contract PERC20Factory {
    PERC20[] public tokens;

    event TokenCreated(address indexed tokenAddress, string name, string symbol, uint256 totalSupply);

    function createToken(
        string memory name,
        string memory symbol,
        uint256 totalSupply
    ) public returns (address) {
        PERC20 newToken = new PERC20(name, symbol, totalSupply, msg.sender);
        tokens.push(newToken);
        emit TokenCreated(address(newToken), name, symbol, totalSupply);
        return address(newToken);
    }

    function getAllTokens() external view returns(PERC20[] memory) {
        return tokens;
    }
}
