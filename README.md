

# Event Organizing Smart Contract

This is a Solidity smart contract created using the Remix IDE for organizing and managing events. The smart contract allows users to check the availability of tickets for a specific event and purchase tickets if they are available. The contract ensures that the event tickets are issued securely and transparently.

## Getting Started

To get started with the smart contract, follow the instructions below:

1. Install an Ethereum-compatible wallet, such as MetaMask or Ganache, and connect it to the Ethereum network of your choice.
2. Open the [Remix IDE](https://remix.ethereum.org/) in your web browser.
3. Create a new Solidity file in Remix IDE and copy the contents of the `event.sol` file into it.

## Contract Overview

The smart contract consists of the following components:

### Event

The `Event` struct represents an event and contains the following fields:
- `organizer`: The organizer for the event.
- `name`: The name of the event.
- `date`: The date for the event.
- `ticketCount`: The total number of tickets available for the event.
- `ticketRemain`: The number of tickets remaining for the event.
- `price`: The price of each ticket.
-
##Event Contract 
This contract uses the following functions.
### `createEvent`
This function allows the contract owner to create a new event by providing the event details and verifying if they are valid such as 
name, date , price , ticketCount.

### `buyTicket`
This function checks if the event is still available to buy tickets for as well as buy it if the conditions are met such as date,
ticket availability. It then verifies the payment and stores the remaining number of tickets into ticketRemian.


## Usage

To use the smart contract, follow these steps:

1. Deploy the contract to an Ethereum network of your choice using Remix IDE.
2. Call the `createEvent` function to create an event, providing the event details.
3. Users can call the `buyTicket` function to purchase tickets for the desired event by specifying the event index and paying the required ticket price.

*Note:* The contract owner should fund the contract with enough ETH to cover the ticket price multiplied by the total number of tickets for each event.

## Development

To modify or enhance the smart contract, follow these steps:

1. Open the Solidity file in Remix IDE.
2. Make the necessary changes to the contract.
3. Compile and deploy the updated contract to an Ethereum network.


## Disclaimer

This smart contract is provided as-is, without any warranty or guarantee. The developers are not liable for any issues or damages caused by using this contract. It is always recommended to review the code and perform thorough testing before deploying it in a production environment.

---
*Note:* This README provides a general overview of the event organizing smart contract. For detailed code implementation, please refer to the Solidity file in the provided repository.
