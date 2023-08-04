# Rock Paper Scissors Game

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

## Description

This is a simple implementation of the Rock Paper Scissors game in Solidity. Players can choose either Rock, Paper, or Scissors, and the smart contract will determine the winner based on the game's rules.

## Table of Contents

- [Rock Paper Scissors Game](#rock-paper-scissors-game)
  - [Description](#description)
  - [Table of Contents](#table-of-contents)
  - [Installation](#installation)
  - [Usage](#usage)
  - [License](#license)
  - [Questions](#questions)

## Installation

To use this Solidity smart contract, you need a compatible development environment such as Remix or Truffle. Copy the code into a new Solidity file or directly into the development environment to deploy and interact with the contract.

## Usage

1. Deploy the `practice` contract and interact with the following functions:

- `Player1(uint x)`: Called by Player 1 to input their choice (Rock: 3, Paper: 1, Scissors: 2).
- `Player2(uint y)`: Called by Player 2 to input their choice (Rock: 3, Paper: 1, Scissors: 2).
- `winner()`: Determine the winner of the Rock Paper Scissors game.

## License

This project is licensed under the terms of the MIT License.

## Questions

If you have any questions or need further assistance, please feel free to contact me:

- Email: [gkirat155@gmail.com]
- GitHub: [gkirat]

---

## Description

[Provide a brief description of your project code.]

## Contract Details

### `practice`

1. `Player1(uint x)`: This function is called by Player 1 to input their choice in the Rock Paper Scissors game. The function takes an argument `x`, which represents the player's choice (Rock: 3, Paper: 1, Scissors: 2). The input is validated to ensure that the player's choice is within the valid range. After receiving the input, the function stores the player's choice in the `p1i` variable and records the player's address and the result in the `detailsofplay` array.

2. `Player2(uint y)`: This function is called by Player 2 to input their choice in the Rock Paper Scissors game. Similar to `Player1`, this function takes an argument `y`, representing the player's choice (Rock: 3, Paper: 1, Scissors: 2). The input is validated to ensure that the player's choice is within the valid range. After receiving the input, the function stores the player's choice in the `p2i` variable and records the player's address and the result in the `detailsofplay` array.

3. `winner()`: This function determines the winner of the Rock Paper Scissors game based on the choices made by both players (`p1i` and `p2i`). The function first checks if both players have made their choices (i.e., `p1i` and `p2i` are not zero). Then, it applies the game's rules to decide the winner. The possible outcomes are:

   - If Player 1 wins, the function sets the `winnerp` variable to "player1."
   - If Player 2 wins, the function sets the `winnerp` variable to "player2."
   - If it's a draw, the function sets the `winnerp` variable to "draw."

   Note: It seems there are some commented lines in the function related to updating the number of games won by each player (`detailsofplay[i].won`). You may need to uncomment and implement this part if you want to keep track of players' scores.

In your `practice2` contract, you have implemented similar functions for Player 1 and Player 2 input and a function to determine the winner. However, there are some differences in the logic and variable names.

Overall, your implementation allows two players to input their choices for Rock Paper Scissors, and the contract will determine and display the winner or a draw result based on the game's rules. Please note that the code may need further improvements and testing to ensure its correctness and security.
## License

This project is licensed under the terms of the MIT License.
[Click here to view the full license text](LICENSE)


## Questions

If you have any questions or need further assistance, please feel free to contact me:

- Email: [gkirat155@gmail.com]
- GitHub: [gkirat]
```
