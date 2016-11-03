import React from 'react';
import {Provider} from 'react-redux';
import {Router, Route, IndexRoute, hashHistory} from 'react-router';

import App from './app';
import ConstructionSplash from './misc/construction';
import LandingSplash from './misc/landing_splash';
// TESTING -------------------------------------------------------------------
import Jobs from './jobs/jobs';
import Companies from './companies/companies';
// TESTING -------------------------------------------------------------------

const Root = ({ store }) => {
  const _redirectIfLoggedIn = (nextState, replace) => {
    if (store.getState().session.currentUser) {
      replace('/');
    }
  };

  const _redirectIfLoggedOut = (nextState, replace) => {
    if (!store.getState().session.currentUser) {
      replace('/');
    }
  };

  return (
    <Provider store={store}>
      <Router history={hashHistory}>
        <Route path={'/'} component={App}>
          <IndexRoute component={LandingSplash}/>
          <Route path='user/:id' component={ConstructionSplash} onEnter={_redirectIfLoggedOut}/>
          <Route path='jobs' component={Jobs}/>
          <Route path='companies' component={Companies}/>
        </Route>
      </Router>
    </Provider>
  );
};

export default Root;
