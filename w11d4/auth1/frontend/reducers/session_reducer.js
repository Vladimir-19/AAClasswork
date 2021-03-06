// to keep track of our current user.
import { 
    RECEIVE_CURRENT_USER,
    LOGOUT_CURRENT_USER,
} from '../actions/session_actions'

const nullUser = Object.freeze({
    id: null
})

const sessionReducer= (state = nullUser, action) => {
    Object.freeze(state);
    console.log(action, state)
    switch(action.type) {
        case RECEIVE_CURRENT_USER:
            return {id: action.currentUser.id};
        case LOGOUT_CURRENT_USER: 
            return nullUser;
        default:
            return state;
    }
};

export default sessionReducer;