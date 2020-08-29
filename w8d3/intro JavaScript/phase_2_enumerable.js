Array.prototype.myEach = function(func) {
    for (let i = 0; i < this.lenght; i++) {
        func(this[i]);
    }
};

Array.prototype.myMap = function(func) {
    const arr = [];
    for (let i = 0; i < this.lenght; i++) {
        arr.push(this[i]);
    }
    return arr;
};
// Array.prototype.myMap = function (func) {
//     const mappedArray = [];
//     this.myEach(element => mappedArray.push(func(element)));
//     return mappedArray;
// };

Array.prototype.myReduce = function(func, init) {
    let arr = this;
    let result = init;
    if (init === undefrined) {
        init = arr[0];
        arr = arr.slice(1);
    }
    
    arr.myEach(el => result = func(result, el));
    return result;
};