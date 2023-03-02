const {ethers} = require("hardhat");

async function main() {
 const whitelistContract= await ethers.getContractFactory("Whitelist");

 const deployedWhitelistedAddress=await whitelistContract.deploy(10);
 await deployedWhitelistedAddress.deployed();
 console.log("Whitelist Contract Address:",deployedWhitelistedAddress.address);

}

// We recommend this pattern to be able to use async/await everywhere
// and properly handle errors.
main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
