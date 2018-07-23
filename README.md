# The Supload ERC-223 Ethereum Token
### Overview
The source code for the Supload token to be used throughout the [Supload ecosystem and website](https://www.supload.com/ico/utility). Based on the ERC-223 token standard, an extension to the ERC-20 token standard, while still being compatible with ERC-20 wallets. Most of the this code is based on the [Open Zeppelin](https://github.com/OpenZeppelin/openzeppelin-solidity) solidity ERC-20 source code. With an extra field added to the transfer function.

### ERC-223 Advantages
If you send 100 ETH to a contract that is not intended to work with Ether, then it will reject a transaction and nothing bad will happen. If you will send 100 ERC-20 tokens to a contract that is not intended to work with ERC-20 tokens, then it will not reject tokens because it cant recognize an incoming transaction. As the result, your tokens will get stuck in the contracts balance. ERC-223 has a fallback transfer function that solves this problem.

### Supload ICO
New tokens are available for purchase at [https://supload.com/ico](https://supload.com/ico) starting July 30th.

### Supload Airdrop
Th Supload airdrop begins Thursday July 26th
