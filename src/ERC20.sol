// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
import "forge-std/console.sol";
import "../lib/openzeppelin-contracts/contracts/token/ERC20/ERC20.sol";

contract MyToken is ERC20{
    constructor() ERC20("MyToken", "MTK") {}

    function mint(address to, uint256 amount) public {
        
        _mint(to, amount);
        
    }

    function burn(uint256 amount) public {
        _burn(msg.sender,amount);
    }
    function tra(address to,uint256 amount) public{
        transfer(to, amount);
    }
}
