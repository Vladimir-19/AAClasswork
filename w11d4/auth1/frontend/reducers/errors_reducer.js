// to keep track of any error messages.
// This file will be responsible for combining our reducers that handle errors
import {combineReducers} from 'redux';
import session from './session_errors_reducer';

export default combineReducers({
    session
})

// ????????????????????????????????????????????????????

// import { combineReducers } from "redux";

// import sessionErrorsReducer from "./session_errors_reducer";

// const errorsReducer = combineReducers({
//     session: sessionErrorsReducer
// });

// export default errorsReducer;