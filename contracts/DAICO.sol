pragma solidity ^0.4.18;

import 'zeppelin-solidity/contracts/math/SafeMath.sol';
import 'zeppelin-solidity/contracts/ownership/Ownable.sol';
import 'zeppelin-solidity/contracts/token/ERC827/ERC827Token.sol';


/**
 * DAICO = DAO + ICO
 * Proposed by Vitalik Buterin - https://ethresear.ch/t/explanation-of-daicos/465
 * WIP Implementation
 */
contract DAICO is Ownable {
	// Initialize SafeMath Library
	using SafeMath for uint256;

	// DAO State Variables
	ERC827Token public token;
	uint256 tap;
	uint256 lastWithdrawn;

	// Management
	Management[] managers;
	uint numManagers;
	mapping(address => bool) managerLookup;

	// Contract Systems State
	enum FundraisingState { FundraisingStart, FundRaisingEnd, OrginizationActive }
	FundraisingState daicoState;

	//Structs
	struct Management {
		address addr;
		string name;
		string title;
	}

	// Modifiers
	modifier onlyManagement {
		require(managerLookup[msg.sender]);
		_;
	}

	modifier onlyTokenHolder {
		require(token.balanceOf(msg.sender) > 0);
		_;
	}

	/** 
	 * Constructor function
	 */
	function DAICO() {
		
	}

	function voteToAddManager(address addr, string name, string title) {
		
	}

	function voteToRemoveManager(address addr) {

	}

	function createProposal() onlyOwner {

	}

	function voteOnProposal(uint propsalId) onlyTokenHolder {

	}
}