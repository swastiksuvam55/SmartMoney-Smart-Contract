// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.7;

contract SmartMoney {

    uint public balanceReceived;
    function deposit() public payable {
        balanceReceived += msg.value;

    }

    function getContractBalance() public view returns(uint) {
        return address(this).balance;

    }

    function withdrawAll() public {
        address payable to = payable(msg.sender);
        to.transfer(getContractBalance());
    }

    function withdrwatoAddress(address payable to) public {
        to.transfer(getContractBalance());
    } 
}
