import { createApplication } from '../util/application_api_util';
import { receiveAppErrors,
         CREATE_APPLICATION } from '../actions/application_actions';
import { receiveOnePosting } from '../actions/posting_actions';

const ApplicationMiddleware = ({getState, dispatch}) => next => action => {
  const createSuccess = posting => (
    dispatch(receiveOnePosting(posting))
  );

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
