// SPDX-License-Identifier: MIT

pragma solidity ^0.8.4;

import {Script} from "forge-std/Script.sol";
import {PERC20Factory} from "../src/PERCFactory.sol";

contract DeployPERCFactory is Script {
  function run() external returns (PERC20Factory) {
    vm.startBroadcast();
    PERC20Factory percFactory = new PERC20Factory();
    vm.stopBroadcast();
    return percFactory;

  }
}
