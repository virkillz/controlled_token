# KILO Stable Coin Documentation


## Background
In regard to centralised control token deployed in Ethereum blockhain as ERC20 standard token


## Approach
The ERC20 standard token dictate to guarantee availability of several method under the smart contract such as: totalSupply, balanceOf, transfer, transferFrom, approve, and allowance.

While the interface is made standard, the implementation is not. We use openzeppelin library to ensure the implementation as secure as possibly known in ethereum community.

Here's the complete list of method/feature in KILO


### ERC20 Requirement

`totalSupply()` to get current total supply of coin

`balanceOf(address)` to get current balance of certain address

`transfer(address, int)` transfer token to certain address in raw amount

`transferFrom(address, address, int)` transfer token to certain address in raw amount from specified address

`approve(address, int)` allow spender to spend transaction done by another address using `transferFrom` method up to given value

`allowance(address, address)` check remaining allowance from one address to spend balance from another address

### ERC20 Additional

`decreaseAllowance(address, value)` decrease allowance given to other address

`increaseAllowance(address, value)` increase allowance given to other address


### ERC20 Detail optional

`name()` get the full name of the token

`symbol()` get symbol of the token

`decimals()` get the decimal setting of the token


### Additional method 

Aside from standard token functionality, following method is useful in context of stablecoin operation.


We need ability to mint new token instead of fixed supply.

`mint(address, int)` mint new balance into certain address with given raw value

`isMinter(address)` check if a given address is minter

`addMinter(address)` add an address to become minter of the token.

`renounceMinter()` remove own address as a minter


We need ability to burn token.


`burn(int)` burn certain amount from total supply from own balance.

`burnFrom(address, value)`  burn certain amount from total supply from certain address.


In case of investigation or spanshot, network pause can be implemented.


`paused()` return true if network is paused.

`pause()` disable contract to perform transfer, transferFrom, approve, increaseAllowance, decreaseAllowance until the pause is revoked. 

`unpause()` revoke pause restriction.


## Ropsten Deployment

Currently KILO is deployed in Ropsten Testnet under contract: '0xAc115fC0A55764b861fcAfC03cFe6964ce32194C'
Name: 'Kilo Token'
Symbol: 'KILO'
Decimals: 3

Deployed by: '0xeA289f70004315a480A2DEb9FE02A2516E2EfBDC'



## Mainnet Deployment Instruction.

put private key of your ETH address in beginning of truffle-config.js file.

```
  const MNEMONIC = 'xxxxx-your-private-key-xxxx';

```


edit the RPC address mainnet under `network` in truffle-config.js 

```
    mainnet: {
      provider: function() {
        return new HDWalletProvider(MNEMONIC, "https://xxx.xxxx.xxx")
      },
      network_id: 3,
      gas: 4000000      //make sure this gas allocation isn't over 4M, which is the max
    } 

```

deploy to mainnet

```
truffle deploy --network mainnet --reset

```

interact with smart contract with:

```
truffle console --network ropsten

truffle(mainnet) let instance = await Toytoken.deployed()
undefined
truffle(mainnet) instance.name()
'Kilo Buck'
```




