import merge from 'lodash/merge';
import {RECEIVE_ONE_POSTING} from '../actions/posting_actions';

const defaultPosting = {
  id: -1, external_url: null, title: '', position: '',
  description: '', created_at: '', company: {}
};

const PostingDetailReducer = (state = defaultPosting, action) => {
  Object.freeze(state);

  switch (action.type) {
    case RECEIVE_ONE_POSTING:
      console.log('RECEIVING', action);
      return action.posting;
    default:
      return state;
  }
};

export default PostingDetailReducer;
