// Write a `String.prototype.symmetricSubstrings` method that returns an array
// of substrings which are palindromes in alphabetical order. Only include 
// substrings of length > 1.
// e.g. "cooltttcc".symmetricSubstrings() => ["oo"]
String.prototype.symmetricSubstrings = function () {
    const symmetric = [];

    for (let i = 0; i < this.length; i++) {
        for (let j = 2; j <= this.length - i; j++) {
            const subst = this.slice(i, i + j);
            const reversed = subst.split('').reverse().join('');

            if (subst === reversed) symmetric.push(subst);
        }
    }

    return symmetric.sort();
};



// Write a recursive function, `permutations(array)`, that returns all of the 
// permutations of an array (A permutation is a possible ordering of the 
// elements in an array)
// e.g. permutations([1,2]) => [[1,2], [2,1]]
// e.g. permutations([1,2,3]) => [[1,2,3], [1,3,2], [2,1,3], 
//                                [2,3,1], [3,1,2], [3,2,1]]

abc
a ab abc bc c


function permutations(arr) {
    if (arr.length <= 1) {
        return [arr];
    }

    const result = [];
    const last = arr.pop(); // === 3 
    const revers = permutations(arr);

    revers.forEach(sub => {
        for (let i = 0; i <= sub.length; i++) {
            let subResult = sub.slice(0, i).concat([last]).concat(sub.slice(i));
            result.push(subResult);
        }
    })

    return result;
};


// Write an `Array.prototype.dups` method that will return an object containing
// the indices of all duplicate elements. The keys are the duplicate elements;
// the values are arrays of their indices in ascending order
//
// Example:
// [1, 3, 4, 3, 0, 3, 0].dups => { 3: [1, 3, 5], 0: [4, 6] }
Array.prototype.dups = function () {
    const count = {};

    // collect all positions
    this.forEach((el, idx) => {
        count[el] = count[el] || [];
        count[el].push(idx);
    });

    Object.keys(count).forEach(key => {
        if (count[key].length < 2) {
            delete count[key];
        }
    });

    return count.sort();
};

// function dups(array) {
//     const count = {};

//     // collect all positions
//     array.forEach((el, idx) => {
//         count[el] = count[el] || [];
//         count[el].push(idx);
//     });

//     Object.keys(count).forEach(key => {
//         if (count[key].length < 2) {
//             delete count[key];
//         }
//     });

//     return count;
// };
// [1, 3, 4, 3, 0, 3, 0].dups

// > let a = [1, 3, 4, 3, 0, 3, 0]

// > dups(a)
// { '0': [4, 6], '3': [1, 3, 5] }
