import * as Actions from '../actions/session_actions';
import merge from 'lodash/merge';

const _nullUser = {
  currentUser: null,
  errors: []
};


const SessionReducer = (state = _nullUser, action) => {
  Object.freeze(state);

  switch (action.type) {
    case Actions.RECEIVE_ERRORS:
      return merge({}, state, {errors: action.errors});
    case Actions.LOGOUT:
      return merge({}, _nullUser);
    case Actions.RECEIVE_CURRENT_USER:
      return {currentUser: action.user, errors: []};
    case Actions.CLEAR_ERRORS:
      let nextState = merge({}, state);
      nextState.errors = [];
      return nextState;
    default:
      return state;
  }
};

export default SessionReducer;
