var HDWalletProvider = require("truffle-hdwallet-provider");

var mnemonic = "";

module.exports = {
  networks: {
    development: {
      host: "localhost",
      port: 8545,
      network_id: "*" // Match any network id
    },
    ropsten: {
      provider: function() {
        return new HDWalletProvider(mnemonic, "https://ropsten.infura.io/<INFURA API KEY>", 0)
      },
      network_id: 3,
      gas: 3000000,
      gasPrice: 5000000000
    },
    mainnet: {
      provider: function() {
        return new HDWalletProvider(mnemonic, "https://mainnet.infura.io/<INFURA API KEY>", 0)
      },
      network_id: 1,
      gas: 3000000,
      gasPrice: 7000000000
    }
  }
};
