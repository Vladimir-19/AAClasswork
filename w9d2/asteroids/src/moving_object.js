


const mo = new MovingObject({
    pos: [30, 30],
    vel: [10, 10],
    radius: 5,
    color: "#00FF00"
});

// fuction MovingObject(options) {
//     this.pos = options.pos;
//     this.vel = options.vel;
//     this.radius = options.radius;
//     this.color = options.color;
//     this.game = options.game;
// }

MovingObect.prototype.draw = function draw(ctx) {
    ctx.arc(
        this.pos[0], this.vel[1], this.radius, 0, 2 * Math.PI, true 
    );
    // ctx.fill()
};

// MovingObect.radius = function (maxX, maxY, numCircles) {
//     let targetCircleArea = (maxX * maxY) / numCircles;
//     let targetRadius = Math.sqrt(targetCircleArea / Math.PI);
//     return 2 * targetRadius;
// };

// MovingObect.r.randomColor = function () {
//     let color = "#";
//     for (let i = 0; i < 6; i++) {
//         color += HEX_DIGITS[Math.floor((Math.random() * 16))];
//     }

//     return color;
// };

module.exports = MovingObject;