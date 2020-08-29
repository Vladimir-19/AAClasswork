 function range(f, l) {
     if (f === l) {
         return [];
     }
    let result = range(f, l - 1)
    result.push(l - 1);
    return result;
};
// console.log(range(3, 10));
// console.log(`range(3, 10) = ${range(3, 10)}`);

function sumRec(arr) {
    if (arr.length === 0) {
        return 0;
    }
    let last = arr[arr.length - 1];
    return sumRec(arr.slice(0, arr.length -1)) + last;
};
// console.log(sumRec([1, 3, 5]));

function exp1(b, expo) {
    return expo === 0 ? 1 : (b * exp1(b, expo - 1))
};
// console.log(exp1(2, 4));

function exp2(b, n) {
    if (n === 0) {
        return 1;
    }

    if (n % 2 == 0) {
        return exp2(b, n / 2) ** 2;
    } else {
        return b * (exp2(b, (n - 1) / 2) ** 2);
    }
};
// console.log(exp2(2, 4)) => 16
// console.log(exp2(2, 5)) => 32

function fibsRec(n) {
    if (n < 2) {
        return n;
    }

    let arr = [0, 1];
    while (arr.length < n) {
        arr.push(arr[arr.length - 2] + arr[arr.length - 1])
    };
    return arr
};
// console.log(fibsRec(5))

function deepDup(arr) {
    if (!(arr instanceof Array)) {
        return arr;
    }
    return arr.map(el => {
        return deepDup(el);
    });
};
// const array = [[2], 3];
// const dupedArray = deepDup(array);
// console.log(`deepDup original = ${JSON.stringify(array)}`);
// dupedArray[0].push(4);

// console.log(`deepDup original = ${JSON.stringify(array)} (should not be mutated)`);
// console.log(`deepDup duped = ${JSON.stringify(dupedArray)} (should be mutated)`);