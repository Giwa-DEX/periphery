// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";

import {ERC1967Proxy} from "@openzeppelin/contracts/proxy/ERC1967/ERC1967Proxy.sol";

import {Controller} from "../src/Controller.sol";
import {BookViewer, IBookManager} from "../src/BookViewer.sol";

contract DeployScript is Script {
    uint256 constant CHAIN_ID_GIWA_SEPOLIA = 91342;

    function run() public {
        vm.startBroadcast();

        uint256 chainId = block.chainid;

        address bookManager;
        address owner;

        if (chainId == CHAIN_ID_GIWA_SEPOLIA) {
            bookManager = 0x16CF06ECB016e449c57b94B8368f2d45D5cf343D;
            owner = msg.sender;
        } else {
            revert("Unsupported chain");
        }

        Controller controller = new Controller(bookManager);
        address bookViewerTemplate = address(new BookViewer(IBookManager(bookManager)));
        address bookViewer = address(
            new ERC1967Proxy(
                address(bookViewerTemplate), abi.encodeWithSelector(BookViewer.__BookViewer_init.selector, owner)
            )
        );

        vm.stopBroadcast();

        console.log("Controller deployed to: ", address(controller));
        console.log("BookViewer deployed to: ", address(bookViewer));
    }
}
