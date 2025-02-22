// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

import {Script} from "forge-std/Script.sol";
import {SimpleStorage} from "../src/SimpleStorage.sol";

contract DeployScript is Script {
    function run() external returns (SimpleStorage) {
        vm.broadcast();
        SimpleStorage simpleStorage = new SimpleStorage();
        vm.broadcast();
        return simpleStorage;
    }
}
