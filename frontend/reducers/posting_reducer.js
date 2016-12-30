import merge from 'lodash/merge';
import {RECEIVE_ALL_POSTINGS} from '../actions/posting_actions';

const PostingReducer = (state = {}, action) => {
  Object.freeze(state);

  switch (action.type) {
    case RECEIVE_ALL_POSTINGS:
      console.log('RECEIVED POSTINGS');
      console.log(action.postings);
      return action.postings;
    default:
      return state;
  }
};

export default PostingReducer;
