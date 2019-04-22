pragma solidity ^0.5.2;

import '../node_modules/openzeppelin-solidity/contracts/token/ERC20/ERC20.sol';
import '../node_modules/openzeppelin-solidity/contracts/token/ERC20/ERC20Detailed.sol';
import '../node_modules/openzeppelin-solidity/contracts/token/ERC20/ERC20Mintable.sol';
import '../node_modules/openzeppelin-solidity/contracts/token/ERC20/ERC20Burnable.sol';
import '../node_modules/openzeppelin-solidity/contracts/token/ERC20/ERC20Pausable.sol';

contract Toytoken is ERC20, ERC20Mintable, ERC20Detailed, ERC20Burnable, ERC20Pausable {
	constructor(string memory _name, string memory _symbol, uint8 _decimals) 
	ERC20Detailed(_name, _symbol, _decimals) 
	public {

	}
}