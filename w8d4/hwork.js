function titleize(arr, callback) {
    let result = arr.map(el => `Mx. ${el} Jingleheimer Schmidt`)
    callback(result);
};
// titleize(["Mary", "Brian", "Leo"], names) => {
//     names.forEach (el => console.log(el));
// });

function Elephant(name, height, tricks) {
    this.name = name;
    this.height = height;
    this.tricks = tricks;
};

Element.prototype.trumpet = function() {
    console.log(`${this.naem} the elephant goes 'phrRRRRRRRRRRR!!!!!!!'`);
};

Element.prototype.grow = function() {
    this.height += 12;
};

Element.prototype.addTrick = function(trick) {
    this.tricks.push(trick);
}

Element.prototype.play = function() {
    let randNum = [Math.floor(Math.random() * this.trick.length)]
    console.log(`${this.name} is ${this.tricks[randNum]}`)
};

// phase III
let ellie = new Elephant("Ellie", 185, ["giving human friends a ride", "playing hide and seek"]);
let charlie = new Elephant("Charlie", 200, ["painting pictures", "spraying water for a slip and slide"]);
let kate = new Elephant("Kate", 234, ["writing letters", "stealing peanuts"]);
let micah = new Elephant("Micah", 143, ["trotting", "playing tic tac toe", "doing elephant ballet"]);
 
Elephant.paradeHelper = function(eleph) {
    console.log(`${eleph.name} is trotting`);
};

// phase IV
    dinerBreakfast = function() {
        const arr = ["scrambled eggs and bacon"];
        console.log(`I'd like ${arr} please`);

        function addMe(meal) {
        dinerBreakfast.arr.push(meal);
    }
};
// function dinerBreakfast() {
// let order = "I'd like cheesy scrambled eggs please.";
// console.log(order);

// return function (food) {
//     order = `${order.slice(0, order.length - 8)} and ${food} please.`;
//     console.log(order);
// };
// };