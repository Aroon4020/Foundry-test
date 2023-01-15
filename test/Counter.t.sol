// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0;
import "../src/ERC20.sol";
import "../lib/forge-std/src/Test.sol";
//import "../lib/forge-std/src/console.sol";
import "forge-std/console.sol";

contract ER0 is Test{
    
    
    MyToken public A;
    address alice = vm.addr(0x1);
    address bob = vm.addr(0x2);

    function setUp() public {
        A = new MyToken();
    }

    function testMint() public{
        
        A.mint(alice, 1e18);
        assertEq(A.balanceOf(alice), 1e18);
    }
    function testFailBurn() public {
        A.burn(1e18);
    }
    
    function testTransfer() public{
        A.mint(address(alice), 2e18);
        vm.prank(alice);
        A.tra(address(bob), 1e18);
        assertEq(A.balanceOf(bob), 1e18);
    }

}
