import React from 'react';
import ReactDOM from 'react-dom';
import Root from './components/root';
import configureStore from './store/store';
// TESTING -------------------------------------------------------------------
import * as Actions from './actions/review_actions';
import * as Util from './util/review_api_util';
// TESTING -------------------------------------------------------------------

document.addEventListener('DOMContentLoaded', () => {
  let store;
  if (window.currentUser) {
    const preloadedState = {session: {currentUser: window.currentUser, errors: []}};
    store = configureStore(preloadedState);
  } else {
    store = configureStore();
  }

  // TESTING -------------------------------------------------------------------
  window.store = store;
  window.actions = Actions;
  window.util = Util;
  // TESTING -------------------------------------------------------------------

  const root = document.getElementById('root');
  ReactDOM.render(<Root store={store}/>, root);
});
