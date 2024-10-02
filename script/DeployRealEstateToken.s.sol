// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import "forge-std/Script.sol";
import "../src/RealEstateToken.sol";

contract DeployRealEstateToken is Script {
    function run() external {
        string memory privateKeyHex = vm.envString("PRIVATE_KEY");
        uint256 deployerPrivateKey = vm.parseUint(privateKeyHex);
        
        vm.startBroadcast(deployerPrivateKey);

        RealEstateToken token = new RealEstateToken(
            "", // uri_
            0xF694E193200268f9a4868e4Aa017A0118C9a8177, // ccipRouterAddress
            0x0b9d5D9136855f6FEc3c0993feE6E9CE8a297846, // linkTokenAddress
            14767482510784806043, // currentChainSelector
            0xA9d587a00A31A52Ed70D6026794a8FC5E2F5dCb0 // functionsRouterAddress
        );

        console.log("RealEstateToken deployed at:", address(token));

        vm.stopBroadcast();
    }
}
