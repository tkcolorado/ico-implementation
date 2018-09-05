const HDWalletProvider = require("truffle-hdwallet-provider");
const mnemonic_rop = process.env.ROPSTEN_MNEMONIC;
const mnemonic_rin = process.env.RINKEBY_MNEMONIC;
const accessToken = process.env.INFURA_ACCESS_TOKEN;

// below word is truffle mnemonic, and you use it once you eneter "trrufle develop"(this mode work on localhost:9545)
// candy maple cake sugar pudding cream honey rich smooth crumble sweet treat
module.exports = {
  networks: {
    development: {
      host: "localhost",
      port: 8545,
      network_id: "*" // match any network
    },
    ropsten: {
      provider: function() {
        return new HDWalletProvider(
          mnemonic_rop,
          "https://ropsten.infura.io/" + accessToken
        );
      },
      network_id: 3,
      gas: 4612388
    },
    rinkeby: {
      provider: function() {
        return new HDWalletProvider(
          mnemonic_rin,
          "https://rinkeby.infura.io/" + accessToken
        );
      },
      network_id: 4,
      gas: 4612388
    }
  },
};

// module.exports = {
//   rpc: {
//     host: 'localhost',
//     port: '8545'
//   },
//   networks: {
//     development: {
//       host: "localhost",
//       port: 8545,
//       network_id: "*"
//     },
//     rinkeby: {
//       host: "127.0.0.1",
//       port: 8545,
//       from: "0xf90fd9c529b52e82e50b67ca3612eaad7781647b", //unlocked account
//       network_id: 4, // Match any network id
//       gas: 4000000, // new GAS LIMIT value
//       // gasPrice: 18000000000,
//     }
//   }
// };
