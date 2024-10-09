TODO: provide architecture and a quick project overview 

`ERC1155Core.sol` contains the main logic.
It's based on the (openzeppellin) ERC1155 non fungible fractionalized contract.
To enable cross chain interoperability, we need to add burn and mint. A transfer from a chain 'A' to a chain 'B' consists of burning the supply in the chain 'A' and minting it on the chain 'B' ensuring "uniqueness" of our data on all chains.

kudos to [@andrej](https://x.com/andrej_dev) for the chainlink bootcamp <3
