# TicTacToe #

Welcome to my ruby implementation of tic tac toe that you can play from the command line!

## Installation ##

* Clone this repo to your local machine

* Navigate into the project directory

* Run bundler ```bundle``` from the command line to install the testing gems

* ```$ ruby play.rb``` and you will start a two player game

* Make a move by entering a position in the form ```x y``` where x and y are numbers between 0 and 2 inclusive

### Example game ####

```
Welcome to TicTacToe
 2 |   |   |  
---------------
 1 |   |   |  
---------------
 0 |   |   |  
---------------
   | 0 | 1 | 2
Player 1 to start
```
```
Player 1, enter your move: 0 0
2 |   |   |  
---------------
1 |   | o |  
---------------
0 |   |   |  
---------------
  | 0 | 1 | 2
```

### Future ###

* Build a tic tac toe AI

* Replace the x-coords with letters and remove the zero indexing y-coords
