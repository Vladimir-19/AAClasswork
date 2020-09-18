export const RECEIVE_TODOS = "RECEIVE_TODOS";
export const RECEIVE_TODO = "RECEIVE_TODO";


// This action creator lets our reducer know to reset 
// the list of todos and, as such, will also need to pass 
// along a new set of todos
export const receiveTodos = (arrOfTodos) => ({
    // this action creater takes a todos array as opposed to a todos
    // object because that's how the backend will send the data to our frontend.
        type: RECEIVE_TODOS,
        arrOfTodos
});

// !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

export const receiveTodo = (arrOfTodo) => ({
        type: RECEIVE_TODO,
        arrOfTodo
})