import { createReview } from '../util/review_api_util';
import * as Actions from '../actions/review_actions';
import { hashHistory } from 'react-router';

const ReviewMiddleware = ({getState, dispatch}) => next => action => {
  const createSuccess = reviews => {
    dispatch(Actions.receiveReviews(reviews));
    hashHistory.push(`/company/${reviews[0].company_id}`);
  };
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
