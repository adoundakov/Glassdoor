import { RECEIVE_APP_ERRORS } from '../actions/application_actions';

const ApplicationReducer = (state = {}, action) => {
  Object.freeze(state);

  switch (action.type) {
    case RECEIVE_APP_ERRORS:
      return action.errors;
    default:
      return state;
  }
};

export default ApplicationReducer;
