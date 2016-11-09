import { createReview } from '../util/review_api_util';
import * as Actions from '../actions/review_actions';

const ReviewMiddleware = ({getState, dispatch}) => next => action => {
  const createSuccess = reviews => dispatch(Actions.receiveReviews(reviews));
  const createFailure = errors => (
    dispatch(Actions.receiveErrors(errors.responseJSON))
  );

  switch (action.type) {
    case Actions.CREATE_REVIEW:
      createReview(action.review, createSuccess, createFailure);
      return next(action);
    default:
      return next(action);
  }
};

export default ReviewMiddleware;
