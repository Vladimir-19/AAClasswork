// 1.
const MovingObject = require("./moving_object.js");


// 2. declare the constructor function on the window
window.MovingObject = MovingObject;

window.addEventListener('DOMContentLoaded', function () {
    const canvaEl = document.getElementById("canvas");
    

    const ctx = canvaEl.getContext("2d");
});
