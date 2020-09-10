const View = require("./ttt-view"); // require appropriate file
const Game = require('../../../game'); // require appropriate file

  $(() => {
    // const game = new Game();
    // new View(game, $('.ttt')); // Your code here
    const rootEl = $('.ttt');
    const game = new Game();
    new View(game, rootEl);
  });
