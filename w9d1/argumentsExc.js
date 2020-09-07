function sum1() {
    let s = 0;
    for (let i = 0; i < arguments.length; i++) { 
        s += arguments[i];
    }; 
    return s
}

// sum1(1, 2, 3, 4) === 10;
// sum1(1, 2, 3, 4, 5) === 15;

function sum2 (...nums) {
    let s = 0;
    for (i = 0; i < nums.length; i++) {
        s += nums[i];
    }
    return s
}

// sum2(1, 2, 3, 4) === 10;
// sum2(1, 2, 3, 4, 5) === 15;


Function.prototype.myBind = function(ctx) {
    const fn = this;
    const bindArgs = Array.from(arguments).slice(1);
    return function _boundFn() {
        const callArgs = Array.from(arguments);
        return fn.apply(ctx, bindArgs.concat(callArgs));
    };
};

Function.prototype.myBind2 = function (ctx, ...bindArgs) {
    return (...callArgs) => this.apply(ctx, bindArgs.concat(callArgs));
}

function curriedSum(numArgs) {
    const numbs = [];

    function _curriedSum(num) {
        numbs.push(num);

        if (numbs.length === numArgs) {
            let total = 0;
            numbs.forEach((x) => { total += x;});
            return toal;
        } else {
            return _curriedSum;
        }
    }
    return _curriedSum;
}