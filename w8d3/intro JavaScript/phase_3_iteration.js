Array.prototype.bubbleSort = function() {
    let myCond = false; 

    while (!myCond) {
        myCond = true;

    for ( i = 0; i < (this.length - 1); i++) {
        if (this[i] > this[i + 1]) {
            [this[i], this[i + 1]] = [this[i + 1], this[i]];
            myCond = false;
        }
    }
    }
    return this;
};
// console.log([5, 3, 4, 2, 1].bubbleSort());
// [1, 2, 3, 4, 5]


String.prototype.substrings = function() {
    let arr = [];
    for (i = 0; i < this.length; i++) {
        for (j = i + 1; j < this.length; j++) {
            arr.push(this.slice(i, j));
        }
    }
    return arr;
};
// console.log("abc".substrings());
// ['a', 'ab', 'b']

String.prototype.substrings = function () {
    let arr = [];
    for (i = 0; i < this.length; i++) {
        for (j = i + 1; j <= this.length; j++) {
            arr.push(this.slice(i, j));
        }
    }
    return arr;
};
// ['a', 'ab', 'abc', 'b', 'bc', 'c']