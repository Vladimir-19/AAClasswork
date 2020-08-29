function arrayUniq(arr) {
    const resault = [];
    for(let i = 0; i < arr.length; i++) {
        if (!resault.includes(arr[i])) {
            resault.push(arr[i])
        }
    }
    return resault;
}

Array.prototype.twoSum = function() {
    const resault = [];
    for (let i = 0; i < (arr.length - 1); i++) {
        for (let j = 1; j < arr.length; j++) {
            if (this[i] + this[j] === 0) {
                resault.push([i, j]);
            }
        }
        }
    return resault;
};

Array.prototype.transpose = function() {
    let tresault = Array.from(
        {length: this[0].length},
        () => Array.from({length: this.length})
    );

    for (let i = 0; i < this.length; i++) {
        for (let j = 0; j < this[i].length; j++) {
           tresault[j][i] = this[i][j];
        }
    }
    return tresault;
};
