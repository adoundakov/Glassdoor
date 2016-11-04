import React from 'react';
import {Provider} from 'react-redux';
import {Router, Route, IndexRoute, hashHistory} from 'react-router';

import App from './app';
import ConstructionSplash from './misc/construction';
import LandingSplash from './misc/landing_splash';
import UserProfile from './users/profile';
import PostingResultsContainer from './postings/posting_results_container';

// TESTING -------------------------------------------------------------------
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

  const _redirectIfWrongUser = (nextState, replace) => {
    _redirectIfLoggedOut(nextState, replace);
    let currId = store.getState().session.currentUser.id;
    if (nextState.params.userId != currId) {
      replace(`/user/${currId}`);
    }
  };

  return (
    <Provider store={store}>
      <Router history={hashHistory}>
        <Route path={'/'} component={App}>
          <IndexRoute component={LandingSplash}/>
          <Route path='user/:userId'
                 component={UserProfile}
                 onEnter={_redirectIfWrongUser}/>
          <Route path='jobs' component={PostingResultsContainer}/>
          <Route path='companies' component={Companies}/>
        </Route>
      </Router>
    </Provider>
  );
};

export default Root;
