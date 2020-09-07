// window.setTimeout (() =>{ 
//     console.log("different");
// }, 9000);

// function hammerTime (time) {
//     window.setTimeout (() => {
//         alert(`${time}  is hammertime!`);
//     });
// }

// tea
// const readline = require('readline');
    
// const reader = readline.createInterface({
//     input: process.stdin,
//     output: process.stdout
// });
// function teaAndBiscuits () { 
//     reader.question(`Whould you like some tea?`, (answer1) => {
//         console.log(`You replied: ${answer1}.`);
//     reader.question(`Whould you like some biscuits?`, (answer2) => {
//         console.log(`You replied: ${answer2}.`);
    
//         let ans1 = (answer1 === "yes") ? "do" : "don\'t";
//         let ans2 = (answer2 === "yes") ? "do" : "don\'t";

//         console.log(`You ${ans1} wanna tea and you  ${ans2} wanna bisxuits.`)
//     reader.close();
//     })
// });
// }

const readline = require('readline');

const reader = readline.createInterface({
    // it's okay if this part is magic; it just says that we want to
    // 1. output the prompt to the standard output (console)
    // 2. read input from the standard input (again, console)

    input: process.stdin,
    output: process.stdout
});

function teaAndBiscuits() {
    reader.question('Would you like some tea?', function (res) {
        console.log(`You replied ${res}.`);
        reader.question('Would you like some biscuits?', function (res2) {
            console.log(`You replied ${res2}.`);

            const first = (res === 'yes') ? 'do' : 'don\'t';
            const second = (res2 === 'yes') ? 'do' : 'don\'t';

            console.log(`So you ${first} want tea and you ${second} want biscuits.`);
            reader.close();
        });
    });
}