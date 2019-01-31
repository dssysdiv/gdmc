pragma solidity ^0.4.25;

import "https://github.com/OpenZeppelin/openzeppelin-solidity/contracts/token/ERC20/ERC20Burnable.sol";
import "https://github.com/OpenZeppelin/openzeppelin-solidity/contracts/token/ERC20/ERC20Detailed.sol";

contract MyToken is ERC20Burnable, ERC20Detailed {

    string private _name = "GDMC Token";
    string private _symbol = "GDMC";
    uint8 private _decimals = 8;

    uint value = 10000000000e8;

    constructor()
        ERC20Detailed(_name, _symbol, _decimals)
        ERC20Burnable()
        public
    {
        _mint(msg.sender, value);
    }
}
