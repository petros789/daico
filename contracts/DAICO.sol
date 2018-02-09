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
	/** 
	 * Initialize SafeMath Library
	 */
	using SafeMath for uint256;

	/** 
	 * Events
	 */
	event Deposit(address sender, uint256 amount);
	event ProposalCreated();
	event ProposalVoted();
	event ProposalApproved();
	event ProposalDenied();
	event ManagerAdded();
	event ManagerRemoved();
	event ProjectShutdownProposed();
	event ProjectshutdownSuccess();

	/** 
	 * DAO State Variables
	 */
	ERC827Token public token;
	uint256 public tap;
	uint256 public lastWithdrawn;
	uint256 public quorumPercentage;
	uint256 public proposalExpiration;

	/** 
	 * Management Variables
	 */
	Management[] public managers;
	mapping(address => bool) public isManager;
	
	/**
	 * Proposal Variables
	 */
	Proposals[] public proposals;

	/** 
	 * Contract System State Variables
	 */
	enum FundraisingState { ProjectSetup, FundraisingStart, FundRaisingEnd, ProjectActive, ProjectShutdown }
	FundraisingState public daicoState;

	/** 
	 * Structs
	 */
	struct Management {
		address addr;
		string name;
		string title;
	}

	/** 
	 * Modifiers
	 */
	modifier onlyManagement {
		require(isManager[msg.sender]);
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
		// Set DAICO State to Setup Mode
		daicoState = FundraisingState.OrginizationSetup;
		// Set up first manager as contract creator
		Management firstManager = Management(msg.sender, '', '');
		managers.add(firstManager);
		managerLookup[msg.sender] = true;
	}

	/**
	 * @dev Fundraising Endpoint (Default Payable) to accept funds for ICO
	 */
	function () payable {
		// Check that DAICO is in fundraising state
		require(msg.value > 0 && daicoState == FundraisingState.FundraisingStart)
		// TODO: Perform Token Sale Actions

		// Send Event to Frontend
		Deposit(msg.sender, msg.value);
	}

	/**
	 * @dev Allows current managers to vote to add a new manager, requires 2/3 consensus
	 * @param addr Address of the new manager
	 * @param name Name of the new manager
	 * @param title Title/Position of the new manager
	 */
	function addManager(address addr, string name, string title) onlyManagement {}

	/**
	 * @dev Allows current managers to vote to remove a new manager, requires 2/3 consensus
	 * @param addr Address of the manager
	 */
	function removeManager(address addr) onlyManagement {}

	/** 
	 * @dev Allows managers to propose a fund request from the investors
	 * @param 
	 */
	function createProposal() onlyManagement {}

	/**
	 * @dev Allows token holders to vote on proposal requests
	 * @param 
	 * 
	 * 
	 */
	function proposalVote(uint propsalId, bool action, string comments) onlyTokenHolder {}

	function proposeNewQuorumPercentage() {}

	function proposeExpirationPeriod() {}

	function proposeProjectShutdown() {}
}