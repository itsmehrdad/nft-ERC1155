require("@nomicfoundation/hardhat-toolbox");
require('@openzeppelin/hardhat-upgrades');
/** @type import('hardhat/config').HardhatUserConfig */
module.exports = {
  solidity: "0.8.9",
  networks: {
    mumbai: {
      url:"https://rpc-mumbai.maticvigil.com",
      accounts:["87a8d4bec7d9a5cc10225db6d31799b3bea72d8226c47460ab14e29288c6cd26"]
    }
  }
};
