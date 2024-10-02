import { buildModule } from "@nomicfoundation/hardhat-ignition/modules";



const MetaDataNFTModule = buildModule("MetaDataModule", (m) => {

  const lock = m.contract("MetaDataNFT");

  return { lock };
});

export default MetaDataNFTModule;
