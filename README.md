# DAICO
Decentralized Autonomous Organization + Initial Coin Offering = DAICO. 

Proposed by Vitalik Buterin - https://ethresear.ch/t/explanation-of-daicos/465 

This is an working version that has not been audited, use at your own risk.

### To Install
`npm init`
`npm install zeppelin-solidity`


### Functionality
DAICO.sol has a group of Management (the heads of the team) who control the contract together. 
- A tap of money every month for expenses related to the project is allowed to be pulled out
- Raise money through an ICO sale with specific conditions
- Ability to lower the tap but not raise the tap without a vote from token holders
- Create proposals for where money should go each month (ex. payroll, sponsorship of an event, office expenses)
- Proposals can have recurring payments 
- Can remove themselves from the project
- A majority vote can remove or add a management member

Investors have voting rights to dissolve the project based on their token share. 
- If they think the company is buying lambos instead of working on the project they can request their money back
- They can raise the tap if the project members request it
- Employees and management should not vote 
- Investors vote on spending proposals 
