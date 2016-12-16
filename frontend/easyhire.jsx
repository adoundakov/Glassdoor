import React from 'react';
import ReactDOM from 'react-dom';
import Root from './components/root';
import configureStore from './store/store';

document.addEventListener('DOMContentLoaded', () => {
  let store;
  if (window.currentUser) {
    const preloadedState = {session: {currentUser: window.currentUser,
                            errors: []}};
    store = configureStore(preloadedState);
  } else {
    store = configureStore();
  }

  // TODO: Remove testing code
  window.store = store;
  // end testing code

  const root = document.getElementById('root');
  ReactDOM.render(<Root store={store}/>, root);
});