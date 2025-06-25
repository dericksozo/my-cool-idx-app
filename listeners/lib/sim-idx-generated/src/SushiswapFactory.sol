// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "lib/sim-idx-sol/src/Triggers.sol";
import "lib/sim-idx-sol/src/Context.sol";

function SushiswapFactory$Abi() pure returns (Abi memory) {
    return Abi("SushiswapFactory");
}
struct SushiswapFactory$allPairsFunctionInputs {
    uint256 outArg0;
}

struct SushiswapFactory$allPairsFunctionOutputs {
    address outArg0;
}

struct SushiswapFactory$allPairsLengthFunctionOutputs {
    uint256 outArg0;
}

struct SushiswapFactory$createPairFunctionInputs {
    address tokenA;
    address tokenB;
}

struct SushiswapFactory$createPairFunctionOutputs {
    address pair;
}

struct SushiswapFactory$feeToFunctionOutputs {
    address outArg0;
}

struct SushiswapFactory$feeToSetterFunctionOutputs {
    address outArg0;
}

struct SushiswapFactory$getPairFunctionInputs {
    address outArg0;
    address outArg1;
}

struct SushiswapFactory$getPairFunctionOutputs {
    address outArg0;
}

struct SushiswapFactory$migratorFunctionOutputs {
    address outArg0;
}

struct SushiswapFactory$pairCodeHashFunctionOutputs {
    bytes32 outArg0;
}

struct SushiswapFactory$setFeeToFunctionInputs {
    address _feeTo;
}

struct SushiswapFactory$setFeeToSetterFunctionInputs {
    address _feeToSetter;
}

struct SushiswapFactory$setMigratorFunctionInputs {
    address _migrator;
}

struct SushiswapFactory$PairCreatedEventParams {
    address token0;
    address token1;
    address pair;
    uint256 outArg3;
}

abstract contract SushiswapFactory$OnPairCreatedEvent {
    function onPairCreatedEvent(EventContext memory ctx, SushiswapFactory$PairCreatedEventParams memory inputs) virtual external;

    function triggerOnPairCreatedEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "SushiswapFactory",
            selector: bytes32(0x0d3648bd0f6ba80134a33ba9275ac585d9d315f0ad8355cddefde31afa28d0e9),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onPairCreatedEvent.selector
        });
    }
}

abstract contract SushiswapFactory$OnAllPairsFunction {
    function onAllPairsFunction(FunctionContext memory ctx, SushiswapFactory$allPairsFunctionInputs memory inputs, SushiswapFactory$allPairsFunctionOutputs memory outputs) virtual external;

    function triggerOnAllPairsFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "SushiswapFactory",
            selector: bytes4(0x1e3dd18b),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onAllPairsFunction.selector
        });
    }
}

abstract contract SushiswapFactory$OnAllPairsLengthFunction {
    function onAllPairsLengthFunction(FunctionContext memory ctx, SushiswapFactory$allPairsLengthFunctionOutputs memory outputs) virtual external;

    function triggerOnAllPairsLengthFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "SushiswapFactory",
            selector: bytes4(0x574f2ba3),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onAllPairsLengthFunction.selector
        });
    }
}

abstract contract SushiswapFactory$OnCreatePairFunction {
    function onCreatePairFunction(FunctionContext memory ctx, SushiswapFactory$createPairFunctionInputs memory inputs, SushiswapFactory$createPairFunctionOutputs memory outputs) virtual external;

    function triggerOnCreatePairFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "SushiswapFactory",
            selector: bytes4(0xc9c65396),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onCreatePairFunction.selector
        });
    }
}

abstract contract SushiswapFactory$OnFeeToFunction {
    function onFeeToFunction(FunctionContext memory ctx, SushiswapFactory$feeToFunctionOutputs memory outputs) virtual external;

    function triggerOnFeeToFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "SushiswapFactory",
            selector: bytes4(0x017e7e58),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onFeeToFunction.selector
        });
    }
}

abstract contract SushiswapFactory$OnFeeToSetterFunction {
    function onFeeToSetterFunction(FunctionContext memory ctx, SushiswapFactory$feeToSetterFunctionOutputs memory outputs) virtual external;

    function triggerOnFeeToSetterFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "SushiswapFactory",
            selector: bytes4(0x094b7415),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onFeeToSetterFunction.selector
        });
    }
}

abstract contract SushiswapFactory$OnGetPairFunction {
    function onGetPairFunction(FunctionContext memory ctx, SushiswapFactory$getPairFunctionInputs memory inputs, SushiswapFactory$getPairFunctionOutputs memory outputs) virtual external;

    function triggerOnGetPairFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "SushiswapFactory",
            selector: bytes4(0xe6a43905),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onGetPairFunction.selector
        });
    }
}

abstract contract SushiswapFactory$OnMigratorFunction {
    function onMigratorFunction(FunctionContext memory ctx, SushiswapFactory$migratorFunctionOutputs memory outputs) virtual external;

    function triggerOnMigratorFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "SushiswapFactory",
            selector: bytes4(0x7cd07e47),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onMigratorFunction.selector
        });
    }
}

abstract contract SushiswapFactory$OnPairCodeHashFunction {
    function onPairCodeHashFunction(FunctionContext memory ctx, SushiswapFactory$pairCodeHashFunctionOutputs memory outputs) virtual external;

    function triggerOnPairCodeHashFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "SushiswapFactory",
            selector: bytes4(0x9aab9248),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onPairCodeHashFunction.selector
        });
    }
}

abstract contract SushiswapFactory$OnSetFeeToFunction {
    function onSetFeeToFunction(FunctionContext memory ctx, SushiswapFactory$setFeeToFunctionInputs memory inputs) virtual external;

    function triggerOnSetFeeToFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "SushiswapFactory",
            selector: bytes4(0xf46901ed),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onSetFeeToFunction.selector
        });
    }
}

abstract contract SushiswapFactory$OnSetFeeToSetterFunction {
    function onSetFeeToSetterFunction(FunctionContext memory ctx, SushiswapFactory$setFeeToSetterFunctionInputs memory inputs) virtual external;

    function triggerOnSetFeeToSetterFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "SushiswapFactory",
            selector: bytes4(0xa2e74af6),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onSetFeeToSetterFunction.selector
        });
    }
}

abstract contract SushiswapFactory$OnSetMigratorFunction {
    function onSetMigratorFunction(FunctionContext memory ctx, SushiswapFactory$setMigratorFunctionInputs memory inputs) virtual external;

    function triggerOnSetMigratorFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "SushiswapFactory",
            selector: bytes4(0x23cf3118),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onSetMigratorFunction.selector
        });
    }
}

contract SushiswapFactory$EmitAllEvents is
  SushiswapFactory$OnPairCreatedEvent
{
  event PairCreated(address token0, address token1, address pair, uint256 outArg3);

  function onPairCreatedEvent(EventContext memory ctx, SushiswapFactory$PairCreatedEventParams memory inputs) virtual external override {
    emit PairCreated(inputs.token0, inputs.token1, inputs.pair, inputs.outArg3);
  }

  function allTriggers() view external returns (Trigger[] memory) {
    Trigger[] memory triggers = new Trigger[](1);
    triggers[0] = this.triggerOnPairCreatedEvent();
    return triggers;
  }
}