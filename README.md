# daico
Decentralized Autonomous Organization + Initial Coin Offering = DAICO. 

Proposed by Vitalik Buterin - https://ethresear.ch/t/explanation-of-daicos/465 

This is an working version that has not been audited, use at your own risk.

### To Install
`npm init`
`npm install zeppelin-solidity`


### Functionality
DAICO.sol has a group of Management (the heads of the team) who control the contract together. 
- They are given a tap of money every month for expenses related to the project 
- Create jobs and biddable contracts for the companies needs
- Raise money through an ICO sale with specific conditions. 

They can propose creation of jobs with specific roles in the company, salaries and goals. 
- Management can vote to fire an employee of the company 
- Vote to raise their pay (if below the current tap) 
- Employees can withdrawl their pay on a specific schedule as allocated

They can propose contracts that people may bid on to complete for the company.
- Management can end the contract if they are not happy 
- State channels pay the contractor incrementally 
- The contractor can be paid on a set basis

Investors have voting rights to dissolve the project based on their token share. 
- If they think the company is buying lambos instead of working on the project they can request their money back
- They can raise the tap if the project members request it
- Employees and management should not vote 

Management can request a few things as well
- Lowering the tap if they don't believe they need as much money
- Can remove themselves from the project
- A majority vote can remove a management member