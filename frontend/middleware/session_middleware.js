import * as Actions from '../actions/session_actions';
import * as Util from '../util/session_api_util';

export default ({getState, dispatch}) => next => action => {
  const successCallback = user => dispatch(Actions.receiveCurrentUser(user));
  const errorCallback = errors => {
    dispatch(Actions.receiveErrors(errors.responseJSON));
  };
switch(action.type) {
  case Actions.LOGIN:
    Util.logIn(action.user, successCallback, errorCallback);
    return next(action);
  case Actions.LOGOUT:
    Util.logOut(() => next(action));
    break;
  case Actions.SIGNUP:
    Util.signUp(action.user, successCallback, errorCallback);
    return next(action);
  default:
    return next(action);
}
};
