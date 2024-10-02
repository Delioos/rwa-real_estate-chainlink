// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import "forge-std/Script.sol";
import "../src/Issuer.sol";

contract DeployIssuer is Script {
    function run() external {
        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");
        vm.startBroadcast(deployerPrivateKey);

        // Adresses nécessaires pour le constructeur
        address realEstateTokenAddress = 0x1bF56dD17af67A12f8d0167F31890eA68ED8B705; // Remplacez par l'adresse réelle de votre RealEstateToken
        address functionsRouterAddress = 0xA9d587a00A31A52Ed70D6026794a8FC5E2F5dCb0; // Adresse du Functions Router sur Avalanche Fuji

        Issuer issuer = new Issuer(
            realEstateTokenAddress,
            functionsRouterAddress
        );

        console.log("Issuer deployed at:", address(issuer));

        vm.stopBroadcast();
    }
}
