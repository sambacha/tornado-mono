// SPDX-License-Identifier: MIT
pragma solidity >0.6.0 <0.8.0;

abstract contract ERC20Basic {
    uint public _totalSupply;
    function totalSupply() virtual public view returns (uint);
    function balanceOf(address who) virtual public view returns (uint);
    function transfer(address to, uint value) virtual public;
    event Transfer(address indexed from, address indexed to, uint value);
}

/**
 * @title ERC20 interface
 * @dev see https://github.com/ethereum/EIPs/issues/20
 */
abstract contract IUSDT is ERC20Basic {
    function allowance(address owner, address spender) virtual public view returns (uint);
    function transferFrom(address from, address to, uint value) virtual public;
    function approve(address spender, uint value) virtual public;
    event Approval(address indexed owner, address indexed spender, uint value);
}
