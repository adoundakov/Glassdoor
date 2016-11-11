import { createApplication } from '../util/application_api_util';
import { receiveAppErrors,
         CREATE_APPLICATION } from '../actions/application_actions';
import { receiveOnePosting } from '../actions/posting_actions';
import { hashHistory } from 'react-router';

const ApplicationMiddleware = ({getState, dispatch}) => next => action => {
  const createSuccess = posting => {
    dispatch(receiveOnePosting(posting));
    hashHistory.push(`/detail/${posting.id}`);
  };

  const createFailure = errors => (
    dispatch(receiveAppErrors(errors))
  );

  switch (action.type) {
    case CREATE_APPLICATION:
      createApplication(action.postingId, action.application,
                        createSuccess, createFailure);
      return next(action);
    default:
      return next(action);
  }
};

export default ApplicationMiddleware;
