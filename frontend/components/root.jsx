import React from 'react';
import {Provider} from 'react-redux';
import {Router, Route, IndexRoute, hashHistory} from 'react-router';

import App from './app';
import SessionForm from './session/session_form';
import ConstructionSplash from './misc/construction';

// TESTING -------------------------------------------------------------------
import Jobs from './jobs/jobs';
import Companies from './companies/companies';
import TestModal from './modal';
// TESTING -------------------------------------------------------------------



const Root = ({ store }) => {
  const _redirectIfLoggedIn = (nextState, replace) => {
    if (store.getState().session.currentUser) {
      replace('/');
    }
  };

  return (
    <Provider store={store}>
      <Router history={hashHistory}>
        <Route path={'/'} component={App}>
          <IndexRoute component={ConstructionSplash}/>
          <Route path='login' component={SessionForm} onEnter={_redirectIfLoggedIn} />
          <Route path='signup' component={SessionForm} onEnter={_redirectIfLoggedIn} />
          <Route path='jobs' component={Jobs}/>
          <Route path='companies' component={Companies}/>
          <Route path='test' component={TestModal}/>
        </Route>
      </Router>
    </Provider>
  );
};

export default Root;
