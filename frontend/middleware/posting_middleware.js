import * as Util from '../util/posting_api_util';
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
      Util.fetchAllPostings(action.searchType, fetchAllSuccess, action.query);
      return next(action);
    case Actions.REQUEST_ONE_POSTING:
      Util.fetchOnePosting(action.id, fetchOneSuccess);
      return next(action);
    case Actions.SAVE_POSTING:
      Util.savePosting(action.postingId, fetchOneSuccess);
      return next(action);
    case Actions.UN_SAVE_POSTING:
      Util.unSavePosting(action.postingId, fetchOneSuccess);
      return next(action);
    default:
      return next(action);
  }
};

export default PostingMiddleware;
