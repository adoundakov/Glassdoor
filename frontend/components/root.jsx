import React from 'react';
import {Provider} from 'react-redux';
import {Router, Route, IndexRoute, hashHistory} from 'react-router';

import App from './app';
import ConstructionSplash from './misc/construction';
import LandingSplash from './misc/landing_splash';
import UserProfileContainer from './users/profile_container';
import PostingResultsContainer from './postings/posting_results_container';
import { requestAllPostings,
         requestOnePosting} from '../actions/posting_actions';
import SavedJobsContainer from './users/saved_jobs_container';
import AppliedJobsContainer from './users/applied_jobs_container';
import StandalonePostingDetail from './postings/standalone_posting_detail';

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

  const _reqTypePostings = (nextState, replace) => {
    _redirectIfWrongUser(nextState, replace);
    let searchType = nextState.location.pathname.slice(8).toUpperCase();
    store.dispatch(requestAllPostings(searchType));
  };

  const _reqOnePosting = (nextState, replace) => {
    let postingId = nextState.params.postingId;
    store.dispatch(requestOnePosting(postingId));
  };

  return (
    <Provider store={store}>
      <Router history={hashHistory}>
        <Route path={'/'} component={App}>
          <IndexRoute component={LandingSplash}/>
          <Route path='user/:userId'
                 component={UserProfileContainer}
                 onEnter={_redirectIfWrongUser}>
                 <Route path='saved'
                        component={SavedJobsContainer}
                        onEnter={_reqTypePostings}/>
                 <Route path='applied'
                  component={AppliedJobsContainer}
                  onEnter={_reqTypePostings}/>
          </Route>
          <Route path='jobs' component={PostingResultsContainer}/>
          <Route path='detail/:postingId'
                 component={StandalonePostingDetail}
                 onEnter={_reqOnePosting}/>
          <Route path='companies' component={Companies}/>
        </Route>
      </Router>
    </Provider>
  );
};

export default Root;
