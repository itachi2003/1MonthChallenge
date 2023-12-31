// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;
function deposit(uint _amount) public {
 uint oldBalance = balance;
 uint newBalance = balance + _amount;
require(newBalance >= oldBalance, "Overflow");
balance = newBalance;
assert(balance >= oldBalance);
}
function withdraw(uint _amount) public {
 uint oldBalance = balance;
require(balance >= _amount, "Underflow");
if (balance < _amount) {
 revert("Underflow");
 }
balance -= _amount;
assert(balance <= oldBalance);
}
