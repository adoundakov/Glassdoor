import merge from 'lodash/merge';
import * as Actions from '../actions/review_actions';

const _defaultReviews = {errors: [], reviews:[]};

const ReviewReducer = (state = _defaultReviews, action) => {
  Object.freeze(state);

  switch (action.type) {
    case Actions.RECEIVE_REVIEWS:
      return {reviews: action.reviews, errors: []};
    case Actions.RECEIVE_ERRORS:
      return merge({}, _defaultReviews, {errors: action.errors});
    default:
      return state;
  }
};

export default ReviewReducer;
