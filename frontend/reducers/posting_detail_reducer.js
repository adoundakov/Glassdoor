import merge from 'lodash/merge';
import {RECEIVE_ONE_POSTING} from '../actions/posting_actions';


const defaultPosting = {
  id: -1, external_url: null, title: '', position: '',
  description: '', created_at: '', company: {}, isSaved: false, isApplied: false
};

const PostingDetailReducer = (state = defaultPosting, action) => {
  Object.freeze(state);

  switch (action.type) {
    case RECEIVE_ONE_POSTING:
      return action.posting;
    default:
      return state;
  }
};

export default PostingDetailReducer;
