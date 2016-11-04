import {fetchAllPostings, fetchOnePosting} from '../util/posting_api_util.js';
import * as Actions from '../actions/posting_actions';

const PostingMiddleware = ({getState, dispatch}) => next => action => {
  const fetchAllSuccess = (postings) => (
    dispatch(Actions.receiveAllPostings(postings))
  );

  const fetchOneSuccess = (posting) => (
    dispatch(Actions.receiveOnePosting(posting))
  );

  switch (action.type) {
    case Actions.REQUEST_ALL_POSTINGS:
      fetchAllPostings(action.searchType, fetchAllSuccess);
      return next(action);
    case Actions.REQUEST_ONE_POSTING:
      console.log('FETCHING!!' + action.id);
      fetchOnePosting(action.id, fetchOneSuccess);
      return next(action);
    default:
      return next(action);

  }
};

export default PostingMiddleware;
