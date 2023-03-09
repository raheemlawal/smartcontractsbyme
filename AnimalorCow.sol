//SPDX-License-Identifier: MIT
pragma solidity ^0.7.0;

abstract contract Animal {
    function noise() public virtual returns(string memory);
}


contract Cow is Animal {
    function noise() public pure override returns(string memory){
        return "moooo";
    }
}
