import React from "react";
import ReactDOM from "react-dom";

import Root from './components/root';
import configureStore from './store/store';

document.addEventListener("DOMContentLoaded", () => {
   
    let store;
    let preloadedState;
    if (window.currentUser) {
         preloadedState = {
            entities: {
                users: { [window.currentUser.id]: window.currentUser }
            },
            session: { id: window.currentUser.id }
        };
        store = configureStore(preloadedState);
        delete window.currentUser;
    } else {
        preloadedState = {
            // ui: { modal: 'signup' },
        };
        store = configureStore(preloadedState);
    }

    window.getState = store.getState();
    window.dispatch = store.dispatch;

    const root = document.getElementById("root");
    ReactDOM.render(<Root store={store} />, root);
});
