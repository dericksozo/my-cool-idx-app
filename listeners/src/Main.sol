// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "sim-idx-sol/Simidx.sol";
import "sim-idx-generated/Generated.sol";

contract Triggers is BaseTriggers {
    function triggers() external virtual override {
        Listener listener = new Listener();
        addTrigger(ChainIdContract(1, 0x1F98431c8aD98523631AE4a59f267346ea31F984), listener.triggerOnCreatePoolFunction());
        addTrigger(ChainIdContract(130, 0x1F98400000000000000000000000000000000003), listener.triggerOnCreatePoolFunction());
        addTrigger(ChainIdContract(8453, 0x33128a8fC17869897dcE68Ed026d694621f6FDfD), listener.triggerOnCreatePoolFunction());

        addTrigger(ChainIdContract(1, 0x1F98431c8aD98523631AE4a59f267346ea31F984), listener.triggerOnOwnerFunction());
        addTrigger(ChainIdContract(130, 0x1F98400000000000000000000000000000000003), listener.triggerOnOwnerFunction());
        addTrigger(ChainIdContract(8453, 0x33128a8fC17869897dcE68Ed026d694621f6FDfD), listener.triggerOnOwnerFunction());

        addTrigger(ChainIdContract(1, 0xC0AEe478e3658e2610c5F7A4A2E1777cE9e4f2Ac), listener.triggerOnPairCreatedEvent());
    }
}

/// Index calls to the UniswapV3Factory.createPool function on Ethereum
/// To hook on more function calls, specify that this listener should implement that interface and follow the compiler errors.
contract Listener is UniswapV3Factory$OnCreatePoolFunction, UniswapV3Factory$OnOwnerFunction, SushiswapFactory$OnPairCreatedEvent {
    /// Emitted events are indexed.
    /// To change the data which is indexed, modify the event or add more events.
    event PoolCreated(uint64 chainId, address caller, address pool, address token0, address token1, uint24 fee, uint256 blockNumber);
    event OwnerQueried(uint64 chainId, address owner, uint256 blockNumber);
    event SushiswapPairCreated(uint64 chainId, address caller, address pair, address token0, address token1, uint256 allPairsLength, uint256 blockNumber);

    /// The handler called whenever the UniswapV3Factory.createPool function is called.
    /// Within here you write your indexing specific logic (e.g., call out to other contracts to get more information).
    /// The only requirement for handlers is that they have the correct signature, but usually you will use generated interfaces to help write them.
    function onCreatePoolFunction(
        FunctionContext memory ctx,
        UniswapV3Factory$createPoolFunctionInputs memory inputs,
        UniswapV3Factory$createPoolFunctionOutputs memory outputs
    )
        external
        override
    {
        emit PoolCreated(uint64(block.chainid), ctx.txn.call.callee, outputs.pool, inputs.tokenA, inputs.tokenB, inputs.fee, block.number);
    }

    function onOwnerFunction(
        FunctionContext memory ctx, 
        UniswapV3Factory$ownerFunctionOutputs memory outputs
    )
        external
        override
    {
        emit OwnerQueried(uint64(block.chainid), outputs.outArg0, block.number);
    }

    function onPairCreatedEvent(
        EventContext memory ctx, 
        SushiswapFactory$PairCreatedEventParams memory inputs
    )
        external 
        override
    {
        emit SushiswapPairCreated(uint64(block.chainid), ctx.txn.call.callee, inputs.pair, inputs.token0, inputs.token1, inputs.outArg3, block.number);
    }
}

