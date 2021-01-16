import { HardhatUserConfig } from 'hardhat/types'
import '@eth-optimism/plugins/hardhat/compiler'
import '@eth-optimism/plugins/hardhat/ethers' 
import '@nomiclabs/hardhat-ethers'
import '@nomiclabs/hardhat-waffle'

const config: HardhatUserConfig = {
  solidity: "0.5.17",
};

export default config
