# TicTacToe #

Welcome to my ruby implementation of tic tac toe that you can play from the command line!

## Installation ##

* Clone this repo to your local machine

* Navigate into the project directory

* Run bundler ```bundle``` from the command line to install the testing gems

* ```$ ruby play.rb``` and you will start a two player game

* Make a move by entering a position in the form ```B2``` where B and 2 would refer to the middle cell, and ```A1``` the bottom right

* Enter ```q``` when prompted for a move to exit the game at any time

### Example game ####

```
Welcome to TicTacToe
 3 |   |   |  
---------------
 2 |   |   |  
---------------
 1 |   |   |  
---------------
   | A | B | C
Player 1 to start
```
```
Player 1, enter your move: 1 1
3 |   |   |  
---------------
2 |   | o |  
---------------
1 |   |   |  
---------------
  | A | B | C
```

### Future ###

* Have a guard clause in the controller against repeat moves

* ~~Replace the x-coords with letters and remove the zero indexing y-coords~~

* Build a tic tac toe AI
