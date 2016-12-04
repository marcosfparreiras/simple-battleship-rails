# About this is project
This is a simple Battleship game written in Rails. Due to the reduced time, this game is far from being finished, but its first version can be seen on [Heroku](https://mfp-simple-battleship-rails.herokuapp.com/).

URL: https://mfp-simple-battleship-rails.herokuapp.com/

The base for the game was taken from https://en.wikipedia.org/wiki/Battleship_%28game%29

These are a few implementation decisions (considering the reduced time to implement it):
-  The boards are unidimentional arrays of size 100;
- Each player has an instance of his own board and another board with his hits and misses in his opponent board
- As soon as one accesses the Home page, the game is reseted;
. Two players can access their boards through the links in Home page;
- The boards are filled automatically and for now there is only one configuration;
- The moves are made through REST calls, passing the player who is making the move and which cell he is trying to hit (from 0 to 99): `UPDATE game/:player_id/:cell`. For example, when the player 1 is trying to hit the cell E9 (8th row, 4th column), , the call would be `UPDATE game/1/84 `.

Due to the reduced time to solve this problem, several implementation requests were not accomplished:
- The moves can only be made through REST calls (there isn't any way to do this using the UI);
- The UI used is simply a simple way for printing a matrix;
- No AJAX requests are made to upate the partials, so to refresh the boards, it's needed to refresh the entire page on the browser.


