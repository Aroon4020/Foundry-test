// // SPDX-License-Identifier: UNLICENSED
// pragma solidity >=0.4.0;
// import "../lib/v3-core/contracts/UniswapV3Pool.sol";
// contract UniV3 {
//     IUniswapV3PoolActions public immutable pool;
//     constructor(address _pool){
//         pool = IUniswapV3PoolActions(_pool);
//     }

//     function addLiquidity(
//         IUniswapV3Pool _pool,
//         address recipient,
//         int24 tickLower,
//         int24 tickUpper,
//         uint128 amount, //amount of liquidity
//         bytes calldata data //encoded sender address transffer token to pool
//     ) external returns(uint256 amount0,uint256 amount1) {

            
//             (amount0, amount1) = _pool.mint(recipient, tickLower, tickUpper, amount, data);
//         }

//     function burnLiquidity(
//         int24 tickLower,
//         int24 tickUpper,
//         uint128 amount
//     ) external returns(uint256 amount0,uint256 amount1){
//         (amount0,amount1) = pool.burn(tickLower, tickUpper, amount);
//     }

//     function swap(
//         address recipient,
//         bool zeroForOne,
//         int256 amountSpecified,
//         uint160 sqrtPriceLimitX96,
//         bytes calldata data
//     ) external {
//         pool.swap(recipient, zeroForOne, amountSpecified, sqrtPriceLimitX96, data);
//     }

//     function collect(
//         address recipient,
//         int24 tickLower,
//         int24 tickUpper,
//         uint128 amount0Requested,
//         uint128 amount1Requested
//     ) external returns(uint256 amount0,uint256 amount1)  {
//         (amount0, amount1)  = pool.collect(recipient, tickLower, tickUpper, amount0Requested, amount1Requested);
//     }

// }
