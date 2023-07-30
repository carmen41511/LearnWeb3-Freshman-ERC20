// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

// import ERC-20 token standard from OZ (reference implementation) so that 
// we don't have to write the entire standard from scratch
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol";


// specify LW3Token new contract, and is an instance of ERC20
contract LW3Token is ERC20 {
    constructor(string memory _name, string memory _symbol)
    ERC20(_name, _symbol) {
        _mint(msg.sender, 10 * 10 **18);
    }

    function mint() public {
        _mint(msg.sender, 10 * 10 **18);
    }
}
