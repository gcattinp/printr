// SPDX-License-Identifier: MIT

pragma solidity ^0.8.4;

import {ERC20} from "@vectorized/solady/tokens/ERC20.sol";

contract PERC20 is ERC20 {
    string private _name;
    string private _symbol;
    uint256 private _totalSupply;

    constructor(
        string memory name_,
        string memory symbol_,
        uint256 totalSupply_,
        address owner
    ) {
        _name = name_;
        _symbol = symbol_;
        _mint(owner, totalSupply_);
    }

    function name() public view override returns (string memory) {
        return _name;
    }

    function symbol() public view override returns (string memory) {
        return _symbol;
    }

    function _constantNameHash() internal view override returns (bytes32) {
        return keccak256(bytes(_name));
    }
}


