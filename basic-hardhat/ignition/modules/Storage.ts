import { buildModule } from "@nomicfoundation/hardhat-ignition/modules";

/**
 * StorageModule — deploys the Storage contract with no constructor arguments.
 *
 * Deploy to Polkadot TestNet:
 *   npx hardhat ignition deploy ignition/modules/Storage.ts --network polkadotTestnet
 */
export default buildModule("StorageModule", (m) => {
  const storage = m.contract("Storage");
  return { storage };
});
