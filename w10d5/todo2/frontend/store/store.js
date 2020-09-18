// A Redux store holds a reference to an !application state!.
// The store handles updating state when actions are dispatched
//  and tells the necessary components to re-render
import { createStore } from 'redux';
import rootReducer from '../reducers/root_reducer';

const configureStore = (preloadedState = {}) => {
    const store = createStore(rootReducer, preloadedState);
    store.subscribe(() => {
        localStorage.state = JSON.stringify(store.getState());
    });
    return store;
}

export default configureStore;
