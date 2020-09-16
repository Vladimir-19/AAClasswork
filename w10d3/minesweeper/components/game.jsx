import Board from './board';
import React from 'react';
import * as Minesweeper from '../minesweeper'

class Game extends React.Component {
    constructor(props) {
        super(props);
        const board = new Minesweeper.Board(9, 10);
        this.updateGame = this.updateGame.bind(this);
        this.state = { board: board };
        this.restartGame = this.restartGame.bind(this);
    }

    restartGame() {

    }

    updateGame() {

    }

    render() {
        let ngame = this.updateGame;

        return (
            <div>
                 <Board board={this.state.board} updateGame={this.updateGame}/>
            </div>
        ); 
    }
}

export default Game;