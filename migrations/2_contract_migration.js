const Toytoken = artifacts.require("Toytoken");

module.exports = function(deployer) {
  deployer.deploy(Toytoken, "Kilo Buck", "KILO", 3);
};