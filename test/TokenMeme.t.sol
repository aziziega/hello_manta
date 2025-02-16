// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {TokenMeme} from "../src/TokenMeme.sol";

contract TokenMemeTest is Test {
    TokenMeme public tokenMeme;

    address public agus = makeAddr("agus");
    address public bambang = makeAddr("bambang");

    function setUp() public {
        tokenMeme = new TokenMeme();
    }

    function Test_Meme() public {
        assertEq(
            tokenMeme.totalSupply(),
            1_000_000_000_000_000e18,
            "total Supply tidak 1T"
        );
    }

    function Test_transfer() public {
        tokenMeme.transfer(agus, 1000e18);
        assertEq(
            tokenMeme.balanceOf(agus),
            1000e18,
            "agus tidak dapat 1000 FFF"
        );
        tokenMeme.transfer(bambang, 1000e18);
        assertEq(
            tokenMeme.balanceOf(bambang),
            1000e18,
            "bambang tidak dapat 1000 FFF"
        );
    }
}
