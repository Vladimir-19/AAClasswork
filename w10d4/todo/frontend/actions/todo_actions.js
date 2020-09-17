export const RECEIVE_TODOS = "RECEIVE_TODOS";
export const RECEIVE_TODO = "RECEIVE_TODO";

// accepts an argument / has a property 
export const redceiveTodo = todo => ({
        type: "RECEIVE_TODO",
        todo,
    })

// reset the list of todos and pass along a new set of todos.
export const receiveTodos = todos => ({
    type: "RECEIVE_TODOS",
    todos
})