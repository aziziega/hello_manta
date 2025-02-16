// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";
import {TokenMeme} from "../src/TokenMeme.sol";

contract TokenMememScript is Script {
    TokenMeme public tokenMeme;

    function setUp() public {}

    function run() public {
        vm.startBroadcast();

        tokenMeme = new TokenMeme();
        console.log("TokenMeme address at : ", address(tokenMeme));

        vm.stopBroadcast();
    }
}
