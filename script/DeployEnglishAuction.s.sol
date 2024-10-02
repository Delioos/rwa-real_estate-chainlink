// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import "forge-std/Script.sol";
import "../src/use-cases/EnglishAuction.sol";

contract DeployEnglishAuction is Script {
    function run() external {
        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");
        vm.startBroadcast(deployerPrivateKey);

        address fractionalizedRealEstateTokenAddress = 0x1bF56dD17af67A12f8d0167F31890eA68ED8B705; 

        EnglishAuction englishAuction = new EnglishAuction(
            fractionalizedRealEstateTokenAddress
        );

        console.log("EnglishAuction deployed at:", address(englishAuction));

        vm.stopBroadcast();
    }
}
