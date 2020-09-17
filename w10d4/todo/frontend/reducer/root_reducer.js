// This file will be responsible for combining our multiple, domain - specific reducers
import { combineReducer } from  'redux';

import todosReducer from './todo_reducer';

const rootReducer = combineReducer({
    todos: todosReducer
    
});

export default rootReducer;