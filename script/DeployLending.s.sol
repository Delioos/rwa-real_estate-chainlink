// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import "forge-std/Script.sol";
import "../src/use-cases/RwaLending.sol";

contract DeployRwaLending is Script {
    function run() external {
        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");
        vm.startBroadcast(deployerPrivateKey);

        // Adresses nécessaires pour le constructeur
        address realEstateTokenAddress = 0x1bF56dD17af67A12f8d0167F31890eA68ED8B705; 
        address usdcAddress = 0x5425890298aed601595a70AB815c96711a31Bc65;
        address usdcUsdAggregatorAddress = 0x97FE42a7E96640D932bbc0e1580c73E705A8EB73;
        uint32 usdcUsdFeedHeartbeat = 86400;

        RwaLending rwaLending = new RwaLending(
            realEstateTokenAddress,
            usdcAddress,
            usdcUsdAggregatorAddress,
            usdcUsdFeedHeartbeat
        );

        console.log("RwaLending deployed at:", address(rwaLending));

        vm.stopBroadcast();
    }
}
