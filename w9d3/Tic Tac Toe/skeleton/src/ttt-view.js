class View {
  constructor(game, $el) {
    this.game = game;
    this.$el = $el; 

    // calling methods we created down below
    this.setupBoard();
    this.bindEvents();
  }

  // bindEvents() {
  //   $("li").on("click", y => {
  //     const $square = $(y.currentTarget);
  //     this.makeMove($square)
  //   })
    
  // }

  // makeMove($square) {

  //   const pos = $square.data("pos");
  //   const currentPlayer = this.game.currentPlayer;

  //   try {
  //     this.game.playMove(pos);
  //   } catch (e) {
  //     alert("This " + e.msg.toLowerCase());
  //     return;
  //   }


  //   $square.addClass(currentPlayer);
    
  //   if (this.game.isOver()) {
  //     $('#ttt').append("<h1>").text("game over");

  //     const winner = this.game.winner()
  //     const $fig = $("<figcaption>");

  //     if (winner) {
  //       this.$el.addClass(`winner-${winner}`);
  //       $fig.html(`You win, ${winner}!`);
  //     } else {
  //       $fig.html("it's a draw")
  //     }
  //     this.$el.append($fig);

  //   } 
  // }
  bindEvents() {
    // install a handler on the `li` elements inside the board.
    this.$el.on("click", "li", (event => {
      const $square = $(event.currentTarget);
      this.makeMove($square);
    }));
  }

  makeMove($square) {
    const pos = $square.data("pos");
    const currentPlayer = this.game.currentPlayer;

    try {
      this.game.playMove(pos);
    } catch (e) {
      alert("This @@@@"); //+ e.msg.toLowerCase());
      return;
    }
    // swapTurn()

    $square.addClass(currentPlayer);

    if (this.game.isOver()) {
      // cleanup click handlers.
      this.$el.off("click");
      this.$el.addClass("game-over");

      const winner = this.game.winner();
      const $figcaption = $("<figcaption>");

      if (winner) {
        this.$el.addClass(`winner-${winner}`);
        $figcaption.html(`You win, ${winner}!`);
      } else {
        $figcaption.html("It's a draw!");
      }

      this.$el.append($figcaption);
      // this.game.swapTurn()
    }
  }
  

  setupBoard() {
    const $ul = $('<ul>');
    for (let r = 0; r < 3; r++) {
      for(let c = 0; c < 3; c++) {
        $("<li>").data("pos", [r, c]);

        $ul.append($("<li>"));
      }
    }

     // this is prints bpard on the page
    this.$el.append($ul)
  }
}

module.exports = View;
