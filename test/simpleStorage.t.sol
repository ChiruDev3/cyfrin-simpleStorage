// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

import {DeployScript} from "../script/simpleStorage.s.sol";
import {SimpleStorage} from "../src/SimpleStorage.sol";
import {Test} from "forge-std/Test.sol";

contract SimpleStorageTest is Test {
    SimpleStorage public simpleStorage;

    function setUp() external {
        DeployScript deployer = new DeployScript();
        simpleStorage = deployer.run();
    }

    function testStoreNumber() public {
        uint256 expectedFavourateNumber = 777;
        simpleStorage.store(expectedFavourateNumber);
        assert(expectedFavourateNumber == simpleStorage.retrive());
    }
}
