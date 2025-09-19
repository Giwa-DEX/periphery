source .env

forge script ./script/Deploy.s.sol:DeployScript --sig "run()" --rpc-url ${GIWA_SEPOLIA_RPC_URL} --private-key ${DEV_PRIVATE_KEY} --broadcast
