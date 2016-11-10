import React from 'react';
import {Provider} from 'react-redux';
import {Router, Route, IndexRoute, hashHistory} from 'react-router';

import App from './app';
import ConstructionSplash from './misc/construction';
import LandingSplash from './misc/landing_splash';
import UserProfileContainer from './users/profile_container';
import PostingResultsContainer from './postings/posting_results_container';
import SavedJobsContainer from './users/saved_jobs_container';
import AppliedJobsContainer from './users/applied_jobs_container';
import StandalonePostingDetail from './postings/standalone_posting_detail';
import CompanyResultsContainer from './companies/company_results_container';
import CompanyDetailContainer from './companies/company_detail_container';
import ApplicationFormContainer from './application/application_form_container';
import ReviewFormContainer from './reviews/review_form_container';
import ReviewIndexContainer from './reviews/review_index_container';
import AuthoredReviewsContainer from './users/authored_reviews_container';

import { requestAllPostings,
  requestOnePosting} from '../actions/posting_actions';
import { requestOneCompany } from '../actions/company_actions';
import { requestReviews } from '../actions/review_actions';

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

  const _reqCompanyReviews = (nextState) => {
    let id = nextState.params.companyId;
    store.dispatch(requestOneCompany(id));
    store.dispatch(requestReviews(id));
  };

  const _reqTypePostings = (searchType) => {
    return (nextState, replace) => {
      _redirectIfWrongUser(nextState, replace);
      store.dispatch(requestAllPostings(searchType));
    };
  };

  const _reqOnePosting = (nextState, replace) => {
    let postingId = nextState.params.postingId;
    store.dispatch(requestOnePosting(postingId));
  };

  const _reqOneCompany = (nextState, replace) => {
    let companyId = nextState.params.companyId;
    store.dispatch(requestOneCompany(companyId));
  };

  const _redirectIfNoDetail = (nextState, replace) => {
    _redirectIfLoggedOut(nextState, replace);
    let postingDetail = store.getState().postingDetail;
    if (postingDetail.id === -1) {
      replace(`/jobs`);
    }
  };

  const _reqTypeReviews = (searchType) => {
    return (nextState, replace) => {
      _redirectIfWrongUser(nextState, replace);
      store.dispatch(requestReviews(-1, searchType));
    };
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
                       onEnter={_reqTypePostings('SAVED')}/>
                <Route path='applied'
                       component={AppliedJobsContainer}
                       onEnter={_reqTypePostings('APPLIED')}/>
                <Route path='authored'
                       component={AuthoredReviewsContainer}
                       onEnter={_reqTypeReviews('AUTHORED')}/>
          </Route>
          <Route path='jobs' component={PostingResultsContainer}/>
          <Route path='detail/:postingId'
                 component={StandalonePostingDetail}
                 onEnter={_reqOnePosting}/>
          <Route path='companies' component={CompanyResultsContainer}/>
          <Route path='company/:companyId'
                 component={CompanyDetailContainer}
                 onEnter={_reqOneCompany}/>
          <Route path='reviews/:companyId'
                 component={ReviewIndexContainer}
                 onEnter={_reqCompanyReviews}/>
          <Route path='reviews/:companyId/new'
                 component={ReviewFormContainer}
                 onEnter={_reqOneCompany}/>
          <Route path='salaries' component={ConstructionSplash}/>
          <Route path='apply'
                 component={ApplicationFormContainer}
                 onEnter={_redirectIfNoDetail}/>
        </Route>
      </Router>
    </Provider>
  );
};

export default Root;
