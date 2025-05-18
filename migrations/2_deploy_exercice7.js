const Carre = artifacts.require("Carre");

module.exports = function (deployer) {
  deployer.deploy(Carre, 5);
};
