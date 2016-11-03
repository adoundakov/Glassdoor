import merge from 'lodash/merge';
import {RECEIVE_ALL_POSTINGS,
        RECEIVE_ONE_POSTING} from '../actions/posting_actions';

const PostingReducer = (state = {}, action) => {
  Object.freeze(state);
  const newState = merge({}, state);

  switch (action.type) {
    case RECEIVE_ALL_POSTINGS:
      return action.postings;
    case RECEIVE_ONE_POSTING:
      return action.posting;
    default:
      return state;
  }
};

export default PostingReducer;
